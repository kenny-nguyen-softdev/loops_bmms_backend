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
import ServiceRepository from '../repositories/Service/service.repository';
import sequelizeConnection from '../core/db/connection';
import { pick } from '../core/utils';
import { Image, ServiceInput } from '../../models';
import { deleteObject, getDownloadURL, getStorage, ref, uploadBytesResumable } from 'firebase/storage';
import { getCurrentDate, giveCurrentDateTime } from '../../utils/date-handler.util';
import ImageRepository from '../repositories/Image/image.repository';
import { generateSVNCode, generateUploadUrls, getOnlyImageName } from '../../utils';
import axios from 'axios';

class ServiceController implements BaseController {
  serviceRepository: ServiceRepository;
  constructor() {
    this.serviceRepository = new ServiceRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const services = await this.serviceRepository.get(filters);
      return new SuccessResponse(res, services);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const serviceId: number = parseInt(req.params.id as string);
      const service = await this.serviceRepository.getOne(serviceId);
      if (!service) return new ErrorResponse(res, 'Service not found', null, 404);
      return new SuccessResponse(res, service);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const serviceInput = pick(
          [
            'sku',
            'name',
            'description',
            'categoryId',
            'costPrice',
            'salePrice',
            'wholesalePrice',
            'standardUnit',
            'isActive',
            'isConsistOfSalePrice',
            'inputTaxId',
            'outputTaxId',
            'presignedUrls',
          ],
          JSON.parse(req.body.data) as unknown as ServiceInput | any,
        ) as ServiceInput | any;
        if (serviceInput.sku) {
          const service = await this.serviceRepository.findOne({
            where: {
              sku: serviceInput.sku,
            },
          });
          if (service) {
            throw new InternalServerError('Duplicate sku in service. The sku attribute should be unique');
          }
        } else {
          serviceInput.sku = generateSVNCode();
        }
        const service = await this.serviceRepository.create(serviceInput);
        let newImages: Image[] = [];
        if (req?.files) {
          newImages = await this.uploadImagesByPresignedUrl(req.files, serviceInput.presignedUrls, service.id);
        }
        return new SuccessResponse(res, { service, images: newImages }, 201);
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const serviceInput = pick(
        [
          'sku',
          'name',
          'description',
          'categoryId',
          'costPrice',
          'salePrice',
          'wholesalePrice',
          'standardUnit',
          'isActive',
          'isConsistOfSalePrice',
          'inputTaxId',
          'outputTaxId',
        ],
        req.body as unknown as ServiceInput,
      ) as ServiceInput;
      const serviceId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const service = await this.serviceRepository.findByIdOrFail(serviceId);
      if (serviceInput.sku && service.sku !== serviceInput.sku) {
        const service = await this.serviceRepository.findOne({
          where: {
            sku: serviceInput.sku,
          },
        });
        if (service) {
          throw new InternalServerError('Duplicate sku in service. The sku attribute should be unique');
        }
      } else {
        serviceInput.sku = service.sku;
      }
      const updateService = await this.serviceRepository.update(serviceId, serviceInput);
      return new SuccessResponse(res, updateService);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const serviceId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const service = await this.serviceRepository.findByIdOrFail(serviceId);
      const result = await this.serviceRepository.deleteById(serviceId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async reactivate(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const serviceId: number = parseInt(req.params.id as string);
      let service = await this.serviceRepository.findByIdOrFail(serviceId);

      if (service?.isActive === true) {
        service = await this.serviceRepository.deactive(serviceId);
      } else {
        service = await this.serviceRepository.active(serviceId);
      }
      return new SuccessResponse(res, service);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async uploadImages(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const serviceId = parseInt(req.params.id as string);
      const service = await this.serviceRepository.getOne(serviceId);
      if (!service) return new ErrorResponse(res, 'service not found', 404);

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
                  serviceId: service.id,
                });
                storageRefs.push(newImage);
              })();
              uploadPromises.push(uploadPromise);
            }
          }
        }
      }
      await Promise.all(uploadPromises);
      return new SuccessResponse(res, { storageRefs }, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  //DELETE(/:id/images)
  async destroyImages(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const serviceId = parseInt(req.params.id as string);
      const service = await this.serviceRepository.getOne(serviceId);
      if (!service) return new ErrorResponse(res, 'Service not found', 404);

      const imageRepository = new ImageRepository();
      const images = await imageRepository.findByServiceId(serviceId);
      if (images?.length === 0) {
        return new ErrorResponse(res, 'No images found for the service', null, 404);
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
      await imageRepository.deleteByServiceId(serviceId);
      return new SuccessResponse(res, { deletedImages: storageRefs });
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

  async destroyImagesV2(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const serviceId: number = parseInt(req.params.id as string);
      const service = await this.serviceRepository.getOne(serviceId);
      if (!service) return new ErrorResponse(res, 'service not found', null, 404);
      const imageRepository = new ImageRepository();
      const images = await imageRepository.findByServiceId(serviceId);
      if (images?.length === 0) {
        return new ErrorResponse(res, 'No images found for the service', null, 404);
      }
      for (const image of images) {
        const deletedUrl = await generateUploadUrls(image.name, 'delete', undefined, undefined);
        await axios.delete(deletedUrl);
      }
      // Delete objects from db
      await imageRepository.deleteByServiceId(serviceId);
      return new SuccessResponse(res, { message: 'Deleted images successfully' });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async uploadImagesV2(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const serviceId: number = parseInt(req.params.id as string);
      const service = await this.serviceRepository.getOne(serviceId);
      if (!service) return new ErrorResponse(res, 'service not found', null, 404);
      const input = pick(['presignedUrls'], JSON.parse(req.body.data) as unknown as any) as any;
      return new SuccessResponse(res, {
        message: 'Uploaded successfully',
        uploadedImages:
          req?.files && (await this.uploadImagesByPresignedUrl(req.files, input.presignedUrls, serviceId)),
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error, (error as NotFoundError).statusCode);
    }
  }
  protected async uploadImagesByPresignedUrl(files: any, presignedUrls: any[], serviceId: number): Promise<Image[]> {
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
            serviceId: serviceId,
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
export default ServiceController;
