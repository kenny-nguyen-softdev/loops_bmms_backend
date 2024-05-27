import { BaseController } from '../core/controllers/BaseController';
import {
  ISuccessResponse,
  IErrorResponse,
  SuccessResponse,
  ErrorResponse,
  NotFoundError,
  InternalServerError,
} from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import ComboRepository from '../repositories/Combo/combo.repository';
import sequelizeConnection from '../core/db/connection';
import { pick } from '../core/utils';
import { ComboAttributes, ComboInput } from '../../models/Combo';
import ImageRepository from '../repositories/Image/image.repository';
import { ComboItem, Image } from '../../models';
import axios from 'axios';
import { getCurrentDate, giveCurrentDateTime } from '../../utils/date-handler.util';
import { generateCBVNCode, generateUploadUrls, getOnlyImageName } from '../../utils';
import ComboItemRepository from '../repositories/ComboItem/combo-item.repository';

class ComboController implements BaseController {
  comboRepository: ComboRepository;
  constructor() {
    this.comboRepository = new ComboRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const combos = await this.comboRepository.findByCriteria(filters);
      return new SuccessResponse(res, combos);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const comboId: number = parseInt(req.params.id as string);
      const filters = req.query as unknown as any;
      const combo = await this.comboRepository.findByIdOrFailByCriteria(comboId, filters);
      return new SuccessResponse(res, combo);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const comboInput = pick(
          [...ComboAttributes, 'productItems', 'serviceItems', 'presignedUrls'],
          JSON.parse(req.body.data) as unknown as
            | (ComboInput & {
                productItems?: { id: number; quantity: number }[];
                serviceItems?: { id: number; quantity: number }[];
                presignedUrls?: any[];
              })
            | any,
        ) as
          | (ComboInput & {
              productItems?: { id: number; quantity: number }[];
              serviceItems?: { id: number; quantity: number }[];
              presignedUrls?: any[];
            })
          | any;
        if (comboInput.sku) {
          const combo = await this.comboRepository.findOne({
            where: {
              sku: comboInput.sku,
            },
          });
          if (combo) {
            throw new InternalServerError('Duplicate sku in combo. The sku attribute should be unique');
          }
        } else {
          comboInput.sku = generateCBVNCode();
        }
        if (comboInput.barcode) {
          const combo = await this.comboRepository.findOne({
            where: {
              barcode: comboInput.barcode,
            },
          });
          if (combo) {
            throw new InternalServerError('Duplicate barcode in combo. The barcode attribute should be unique');
          }
        } else {
          comboInput.barcode = generateCBVNCode();
        }
        const combo = await this.comboRepository.create(comboInput);
        let createdComboItems: ComboItem[] = [];
        if (comboInput?.productItems && comboInput?.productItems.length > 0) {
          const comboItemRepository = new ComboItemRepository();
          const comboItemInputs = comboInput.productItems.map((productItem: { id: number; quantity: number }) => ({
            comboId: combo.id,
            productId: productItem.id,
            quantity: productItem.quantity,
          }));
          const newComboItems = await comboItemRepository.bulkCreate(comboItemInputs);
          createdComboItems = [...createdComboItems, ...newComboItems];
        }
        if (comboInput?.serviceItems && comboInput?.serviceItems.length > 0) {
          const comboItemRepository = new ComboItemRepository();
          const comboItemInputs = comboInput.serviceItems.map((serviceItem: { id: number; quantity: number }) => ({
            comboId: combo.id,
            serviceId: serviceItem.id,
            quantity: serviceItem.quantity,
          }));
          const newComboItems = await comboItemRepository.bulkCreate(comboItemInputs);
          createdComboItems = [...createdComboItems, ...newComboItems];
        }
        let newImages: Image[] = [];
        if (req?.files) {
          newImages = await this.uploadImagesByPresignedUrl(req.files, comboInput.presignedUrls, combo.id);
        }
        return new SuccessResponse(res, { combo, comboItems: createdComboItems, images: newImages }, 201);
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error, (error as NotFoundError).statusCode);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const comboInput = pick(ComboAttributes, req.body as unknown as ComboInput) as ComboInput;
      const comboId: number = parseInt(req.params.id as string);
      const combo = await this.comboRepository.findOne({
        where: {
          id: comboId,
        },
      });
      if (!combo) return new ErrorResponse(res, 'Combo not found', null, 404);
      if (comboInput.sku && combo.sku !== comboInput.sku) {
        const combo = await this.comboRepository.findOne({
          where: {
            sku: comboInput.sku,
          },
        });
        if (combo) {
          throw new InternalServerError('Duplicate sku in combo. The sku attribute should be unique');
        }
      } else {
        comboInput.sku = combo.sku;
      }
      if (comboInput.barcode && combo.barcode !== comboInput.barcode) {
        const combo = await this.comboRepository.findOne({
          where: {
            barcode: comboInput.barcode,
          },
        });
        if (combo) {
          throw new InternalServerError('Duplicate barcode in combo. The barcode attribute should be unique');
        }
      } else {
        comboInput.barcode = combo.barcode;
      }
      const updatedCombo = await this.comboRepository.update(comboId, comboInput);
      return new SuccessResponse(res, { updatedCombo });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const comboId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const combo = await this.comboRepository.findByIdOrFail(comboId);
      const result = await this.comboRepository.deleteById(comboId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroyImages(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const comboId: number = parseInt(req.params.id as string);
      const combo = await this.comboRepository.findOne({
        where: {
          id: comboId,
        },
      });
      if (!combo) return new ErrorResponse(res, 'Combo not found', null, 404);
      const imageRepository = new ImageRepository();
      const images = await imageRepository.findByComboId(comboId);
      if (images?.length === 0) {
        return new ErrorResponse(res, 'No images found for the combo', null, 404);
      }
      for (const image of images) {
        const deletedUrl = await generateUploadUrls(image.name, 'delete', undefined, undefined);
        await axios.delete(deletedUrl);
      }
      // Delete objects from db
      await imageRepository.deleteByComboId(comboId);
      return new SuccessResponse(res, { message: 'Deleted images successfully' });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async reactivate(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const comboId: number = parseInt(req.params.id as string);
      let combo = await this.comboRepository.findOne({
        where: {
          id: comboId,
        },
      });
      if (!combo) return new ErrorResponse(res, 'Not found combo', 404);
      if (combo.isActive === true) {
        combo = await this.comboRepository.deactive(comboId);
      } else {
        combo = await this.comboRepository.active(comboId);
      }
      return new SuccessResponse(res, combo);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  protected async uploadImagesByPresignedUrl(files: any, presignedUrls: any[], comboId: number): Promise<Image[]> {
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
            comboId: comboId,
          });
          newImages.push(newImage);
        }
      }
      return newImages;
    } catch (error: any) {
      throw new Error(error);
    }
  }
  async uploadImages(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const comboId: number = parseInt(req.params.id as string);
      const combo = await this.comboRepository.findOne({
        where: {
          id: comboId,
        },
      });
      if (!combo) return new ErrorResponse(res, 'Combo not found', null, 404);
      const input = pick(['presignedUrls'], JSON.parse(req.body.data) as unknown as any) as any;
      return new SuccessResponse(res, {
        message: 'Uploaded successfully',
        uploadedImages: req?.files && (await this.uploadImagesByPresignedUrl(req.files, input.presignedUrls, comboId)),
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error, (error as NotFoundError).statusCode);
    }
  }
  async generatePresignedUrlImages(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
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
}
export default ComboController;
