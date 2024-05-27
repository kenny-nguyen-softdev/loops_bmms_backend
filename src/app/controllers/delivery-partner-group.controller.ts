/* eslint-disable no-unused-vars */
import { DeliveryPartnerGroupAttributes, DeliveryPartnerGroupInput } from '../../models';
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
import DeliveryPartnerGroupRepository from '../repositories/DeliveryPartnerGroup/delivery-partner-group.repository';

class DeliveryPartnerGroupController implements BaseController {
  deliveryPartnerGroupRepository: DeliveryPartnerGroupRepository;
  constructor() {
    this.deliveryPartnerGroupRepository = new DeliveryPartnerGroupRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const deliveryPartnerGroups = await this.deliveryPartnerGroupRepository.findByCriteria(filters);
      return new SuccessResponse(res, deliveryPartnerGroups);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryPartnerGroupId: number = parseInt(req.params.id as string);
      const deliveryPartnerGroup = await this.deliveryPartnerGroupRepository.findOne({
        where: {
          id: deliveryPartnerGroupId,
        },
      });
      if (!deliveryPartnerGroup) return new ErrorResponse(res, 'DeliveryPartnerGroup not found', null, 404);
      return new SuccessResponse(res, deliveryPartnerGroup);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryPartnerGroupInput = pick(
        DeliveryPartnerGroupAttributes,
        req.body as unknown as DeliveryPartnerGroupInput,
      ) as DeliveryPartnerGroupInput;
      const deliveryPartnerGroup = await this.deliveryPartnerGroupRepository.create(deliveryPartnerGroupInput);
      return new SuccessResponse(res, deliveryPartnerGroup, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryPartnerGroupId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const deliveryPartnerGroup = await this.deliveryPartnerGroupRepository.findByIdOrFail(deliveryPartnerGroupId);
      const deliveryPartnerGroupInput = pick(
        DeliveryPartnerGroupAttributes,
        req.body as unknown as DeliveryPartnerGroupInput,
      ) as DeliveryPartnerGroupInput;
      const updatedDeliveryPartnerGroup = await this.deliveryPartnerGroupRepository.update(
        deliveryPartnerGroupId,
        deliveryPartnerGroupInput,
      );
      return new SuccessResponse(res, updatedDeliveryPartnerGroup);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryPartnerGroupId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const deliveryPartnerGroup = await this.deliveryPartnerGroupRepository.findByIdOrFail(deliveryPartnerGroupId);
      const result = await this.deliveryPartnerGroupRepository.deleteById(deliveryPartnerGroupId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default DeliveryPartnerGroupController;
