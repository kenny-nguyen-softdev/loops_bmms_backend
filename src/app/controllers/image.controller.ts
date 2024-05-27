/* eslint-disable no-unused-vars */
import { deleteObject, getStorage, ref } from 'firebase/storage';
import { BaseController } from '../core/controllers/BaseController';
import {
  ErrorResponse,
  IErrorResponse,
  ISuccessResponse,
  NotFoundError,
  SuccessResponse,
} from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import ImageRepository from '../repositories/Image/image.repository';
import * as admin from 'firebase-admin';
import axios from 'axios';
class ImageController implements BaseController {
  imageRepository: ImageRepository;
  constructor() {
    this.imageRepository = new ImageRepository();
  }
  index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
  create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
  update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const imageId: number = parseInt(req.params.id as string);
      const image = await this.imageRepository.findOne({
        where: {
          id: imageId,
        },
      });
      if (!image) return new ErrorResponse(res, 'Image not found', null, 404);
      return new SuccessResponse(res, image);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const imageId: number = parseInt(req.params.id as string);
      const image = await this.imageRepository.findByIdOrFail(imageId);
      const storage = getStorage();
      const storageRef = ref(storage, image?.name);
      // Delete object from storage
      await deleteObject(storageRef);
      // Delete object from db
      const result = await this.imageRepository.deleteById(imageId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroyV2(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const imageId: number = parseInt(req.params.id as string);
      const image = await this.imageRepository.findByIdOrFail(imageId);
      const deletedUrl = await this.generateUploadUrls(image?.name ?? '', 'delete', undefined, undefined);
      // Delete object from storage
      await axios.delete(deletedUrl);
      // Delete object from db
      const result = await this.imageRepository.deleteById(imageId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  protected async generateUploadUrls(
    fileName: string,
    action: 'read' | 'write' | 'delete' | 'resumable',
    contentType?: string,
    expries?: string | number | Date,
  ) {
    const storage = admin.storage();
    const bucket = storage.bucket();
    const options = {
      version: 'v2' as const,
      action: action,
      expires: expries ?? Date.now() + 15 * 60 * 1000, // Set the expiration time (e.g., 15 minutes from now)
      contentType, // Set the content type of the file
    };
    const [url] = await bucket.file(fileName).getSignedUrl(options);
    return url;
  }
}
export default ImageController;
