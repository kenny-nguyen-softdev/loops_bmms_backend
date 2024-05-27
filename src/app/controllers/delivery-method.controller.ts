/* eslint-disable no-unused-vars */
import { DeliveryMethodAttributes, DeliveryMethodInput } from '../../models';
import { BaseController } from '../core/controllers/BaseController';
import {
  ErrorResponse,
  IErrorResponse,
  ISuccessResponse,
  NotFoundError,
  SuccessResponse,
} from '../core/response/BaseResponse';
import { pick } from '../core/utils';
import { IRequest, IResponse } from '../core/vendors';
import DeliveryMethodRepository from '../repositories/DeliveryMethod/delivery-method.repository';

class DeliveryMethodController implements BaseController {
  deliveryMethodRepository: DeliveryMethodRepository;
  constructor() {
    this.deliveryMethodRepository = new DeliveryMethodRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const deliveryMethods = await this.deliveryMethodRepository.findByCriteria(filters);
      return new SuccessResponse(res, deliveryMethods);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryMethodId: number = parseInt(req.params.id as string);
      const deliveryMethod = await this.deliveryMethodRepository.findOne({
        where: {
          id: deliveryMethodId,
        },
      });
      if (!deliveryMethod) return new ErrorResponse(res, 'DeliveryMethod not found', null, 404);
      return new SuccessResponse(res, deliveryMethod);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryMethodInput = pick(
        DeliveryMethodAttributes,
        req.body as unknown as DeliveryMethodInput,
      ) as DeliveryMethodInput;
      const deliveryMethod = await this.deliveryMethodRepository.create(deliveryMethodInput);
      return new SuccessResponse(res, deliveryMethod, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryMethodId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const deliveryMethod = await this.deliveryMethodRepository.findByIdOrFail(deliveryMethodId);
      const deliveryMethodInput = pick(
        DeliveryMethodAttributes,
        req.body as unknown as DeliveryMethodInput,
      ) as DeliveryMethodInput;
      const updatedDeliveryMethod = await this.deliveryMethodRepository.update(deliveryMethodId, deliveryMethodInput);
      return new SuccessResponse(res, updatedDeliveryMethod);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryMethodId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const deliveryMethod = await this.deliveryMethodRepository.findByIdOrFail(deliveryMethodId);
      const result = await this.deliveryMethodRepository.deleteById(deliveryMethodId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default DeliveryMethodController;
