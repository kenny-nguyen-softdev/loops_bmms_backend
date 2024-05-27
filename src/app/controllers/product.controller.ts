import { Image, ProductInput, ProductUnit} from '../../models';
import { generatePVNCode, generateUploadUrls, getCurrentDate, getOnlyImageName } from '../../utils';
import { giveCurrentDateTime } from '../../utils/date-handler.util';
import { BaseController } from '../core/controllers/BaseController';
import {
  ErrorResponse,
  IErrorResponse,
  ISuccessResponse,
  InternalServerError,
  NotFoundError,
  SuccessResponse,
} from '../core/response/BaseResponse';
import { pick } from '../core/utils';
import { IRequest, IResponse } from '../core/vendors';
import ProductRepository from '../repositories/Product/product.repository';
import { getStorage, ref, getDownloadURL, uploadBytesResumable, deleteObject } from 'firebase/storage';
import ImageRepository from '../repositories/Image/image.repository';
import sequelizeConnection from '../core/db/connection';
import axios from 'axios';
import ProductUnitRepository from '../repositories/ProductUnit/product-unit.repository';

type ProductUnitsInput = {
  id: number,
  name: string,
  quantity: number,
  salePrice: number,
}
class ProductController implements BaseController {
  productRepository: ProductRepository;
  productUnitRepository: ProductUnitRepository;
  constructor() {
    this.productRepository = new ProductRepository();
    this.productUnitRepository = new ProductUnitRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const products = await this.productRepository.get(filters);
      return new SuccessResponse(res, products);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productId: number = parseInt(req.params.id as string);
      const product = await this.productRepository.getOne(productId);
      if (!product) return new ErrorResponse(res, 'Product not found', null, 404);
      return new SuccessResponse(res, product);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const productInput = pick(
          [
            'name',
            'categoryId',
            'brandId',
            'sku',
            'barcode',
            'description',
            'costPrice',
            'salePrice',
            'wholesalePrice',
            'inventoryQuantity',
            'standardUnit',
            'weight',
            'weightUnitId',
            'sizeUnitId',
            'width',
            'length',
            'isActive',
            'isConsistOfSalePrice',
            'inputTaxId',
            'outputTaxId',
            'presignedUrls',
            'productUnits',
          ],
          JSON.parse(req.body.data) as unknown as ProductInput | any,
        ) as ProductInput | any;
        if (productInput.sku) {
          const product = await this.productRepository.findOne({
            where: {
              sku: productInput.sku,
            },
          });
          if (product) {
            throw new InternalServerError('Duplicate sku in product. The sku attribute should be unique');
          }
        } else {
          productInput.sku = generatePVNCode();
        }
        if (productInput.barcode) {
          const product = await this.productRepository.findOne({
            where: {
              barcode: productInput.barcode,
            },
          });
          if (product) {
            throw new InternalServerError('Duplicate barcode in product. The barcode attribute should be unique');
          }
        } else {
          productInput.barcode = generatePVNCode();
        }
        const product = await this.productRepository.create(productInput);
        if (productInput.productUnits){ 
          const productUnitsInput = productInput.productUnits.map((productUnit: ProductUnitsInput) => ({
            productId: product.id,
            name: productUnit.name,
            quantity: productUnit.quantity,
            salePrice: productUnit.salePrice,
            isDefaultPrice: false,
          }));
          await this.productUnitRepository.bulkCreate(productUnitsInput);
        }
        
        let newImages: Image[] = [];
        if (req?.files) {
          newImages = await this.uploadImagesByPresignedUrl(req.files, productInput.presignedUrls, product.id);
        }
        return new SuccessResponse(res, { product, images: newImages }, 201);
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error, (error as NotFoundError).statusCode);
    }
  }

  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productInput = pick(
        [
          'name',
          'categoryId',
          'brandId',
          'sku',
          'barcode',
          'description',
          'costPrice',
          'salePrice',
          'wholesalePrice',
          'inventoryQuantity',
          'standardUnit',
          'weight',
          'weightUnitId',
          'width',
          'length',
          'sizeUnitId',
          'isActive',
          'isConsistOfSalePrice',
          'inputTaxId',
          'outputTaxId',
          'productUnits',
        ],
        req.body as unknown as ProductInput | any,
      ) as ProductInput | any;
      const productId: number = parseInt(req.params.id as string);

      const product = await this.productRepository.findByIdOrFail(productId);
      if (productInput.sku && product.sku !== productInput.sku) {
        const product = await this.productRepository.findOne({
          where: {
            sku: productInput.sku,
          },
        });
        if (product) {
          throw new InternalServerError('Duplicate sku in product. The sku attribute should be unique');
        }
      } else {
        productInput.sku = product.sku;
      }
      if (productInput.barcode && product.barcode !== productInput.barcode) {
        const product = await this.productRepository.findOne({
          where: {
            barcode: productInput.barcode,
          },
        });
        if (product) {
          throw new InternalServerError('Duplicate barcode in product. The barcode attribute should be unique');
        }
      } else {
        productInput.barcode = product.barcode;
      }
      const updatedProduct = await this.productRepository.update(productId, productInput);
      if (productInput.productUnits) {
        console.log('longdeptraivai');
        console.log(productInput.productUnits);
        const productUnitsInput: ProductUnit[] = productInput.productUnits.map((productUnit: ProductUnitsInput) => ({
          id: productUnit.id,
          productId: product.id,
          name: productUnit.name,
          quantity: productUnit.quantity,
          salePrice: productUnit.salePrice,
          isDefaultPrice: false,
        }));
        await Promise.all([
          this.productUnitRepository.bulkUpdate(productUnitsInput, {
            updateOnDuplicate: ['name', 'quantity', 'salePrice', 'updatedAt'],
          }),
        ]);
      }
      return new SuccessResponse(res, { updatedProduct });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const product = await this.productRepository.findByIdOrFail(productId);
      const result = await this.productRepository.deleteById(productId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async reactivate(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productId: number = parseInt(req.params.id as string);
      let product = await this.productRepository.findByIdOrFail(productId);
      if (product?.isActive === true) {
        product = await this.productRepository.deactive(productId);
      } else {
        product = await this.productRepository.active(productId);
      }
      return new SuccessResponse(res, product);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async uploadImages(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productId: number = parseInt(req.params.id as string);
      const product = await this.productRepository.getOne(productId);
      if (!product) return new ErrorResponse(res, 'Product not found', null, 404);

      const storage = getStorage();
      const dateTime = giveCurrentDateTime();
      const storageRefs: Image[] = [];
      const imageRepository = new ImageRepository();
      const uploadPromises: Promise<void>[] = [];
      if (req?.files) {
        if (Array.isArray(req.files)) {
          for (const file of req?.files) {
            const originalName = getOnlyImageName(file.originalname);
            const storageRef = ref(storage, `${getCurrentDate()}/${originalName + '       ' + dateTime}`);
            const metadata = {
              contentType: file.mimetype,
            };
            let snapshot;
            let downloadURL = '';
            if (!file.buffer) {
              downloadURL = '';
            } else {
              const uploadPromise = (async () => {
                snapshot = await uploadBytesResumable(storageRef, file.buffer, metadata);
                downloadURL = await getDownloadURL(snapshot?.ref);
                const newImage = await imageRepository.create({
                  name: `${getCurrentDate()}/${originalName + '       ' + dateTime}`,
                  path: downloadURL,
                  productId: productId,
                });
                storageRefs.push(newImage);
              })();
              uploadPromises.push(uploadPromise);
            }
          }
        }
      }
      await Promise.all(uploadPromises);
      return new SuccessResponse(res, storageRefs);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async destroyImages(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productId: number = parseInt(req.params.id as string);
      const product = await this.productRepository.getOne(productId);
      if (!product) return new ErrorResponse(res, 'Product not found', null, 404);
      const imageRepository = new ImageRepository();
      const images = await imageRepository.findByProductId(productId);
      if (images?.length === 0) {
        return new ErrorResponse(res, 'No images found for the product', null, 404);
      }
      const storage = getStorage();
      const storageRefs: any[] = [];
      for (const image of images) {
        const storageRef = ref(storage, image.name);
        // Delete object from storage
        await deleteObject(storageRef);
        storageRefs.push(image.name);
      }
      // Delete objects from db
      await imageRepository.deleteByProductId(productId);
      return new SuccessResponse(res, { deletedImages: storageRefs });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async destroyImagesV2(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productId: number = parseInt(req.params.id as string);
      const product = await this.productRepository.getOne(productId);
      if (!product) return new ErrorResponse(res, 'Product not found', null, 404);
      const imageRepository = new ImageRepository();
      const images = await imageRepository.findByProductId(productId);
      if (images?.length === 0) {
        return new ErrorResponse(res, 'No images found for the product', null, 404);
      }
      for (const image of images) {
        const deletedUrl = await generateUploadUrls(image.name, 'delete', undefined, undefined);
        await axios.delete(deletedUrl);
      }
      // Delete objects from db
      await imageRepository.deleteByProductId(productId);
      return new SuccessResponse(res, { message: 'Deleted images successfully' });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async generatePresignedUrlImagesV2(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const dateTime = giveCurrentDateTime();
      let presignedUrls: any;
      if (req?.files) {
        if (Array.isArray(req.files)) {
          presignedUrls = await Promise.all(
            req.files.map(async (file: any) => {
              const originalName = getOnlyImageName(file.originalname);
              const writePresignedUrl = await generateUploadUrls(
                `${getCurrentDate()}/${originalName + '       ' + dateTime}`,
                'write',
                file.mimetype,
              );
              return {
                write: writePresignedUrl,
                filename: `${getCurrentDate()}/${originalName + '       ' + dateTime}`,
              };
            }),
          );
        }
      }
      return new SuccessResponse(res, { presignedUrls });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async uploadImagesV2(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productId: number = parseInt(req.params.id as string);
      const product = await this.productRepository.getOne(productId);
      if (!product) return new ErrorResponse(res, 'Product not found', null, 404);
      const input = pick(['presignedUrls'], JSON.parse(req.body.data) as unknown as any) as any;
      return new SuccessResponse(res, {
        message: 'Uploaded successfully',
        uploadedImages:
          req?.files && (await this.uploadImagesByPresignedUrl(req.files, input.presignedUrls, productId)),
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error, (error as NotFoundError).statusCode);
    }
  }
  protected async uploadImagesByPresignedUrl(files: any, presignedUrls: any[], productId: number): Promise<Image[]> {
    try {
      const imageRepository = new ImageRepository();
      const newImages: Image[] = [];
      if (Array.isArray(files)) {
        for (let index = 0; index < files.length; index++) {
          const file: any = files[index];
          await axios.put(presignedUrls[index].write, file.buffer, {
            headers: {
              'Content-Type': file.mimetype,
            },
          });
          const downloadedUrl = await generateUploadUrls(
            presignedUrls[index].filename,
            'read',
            undefined,
            '2050-01-01',
          );
          const newImage = await imageRepository.create({
            name: presignedUrls[index].filename,
            path: downloadedUrl,
            productId: productId,
          });
          newImages.push(newImage);
        }
      }
      return newImages;
    } catch (error: any) {
      throw new Error(error);
    }
  }
}
export default ProductController;
