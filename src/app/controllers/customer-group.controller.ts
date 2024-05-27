/* eslint-disable no-unused-vars */
import { CustomerGroupAttributes, CustomerGroupInput } from '../../models';
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
import CustomerGroupRepository from '../repositories/CustomerGroup/customer-group.repository';

class CustomerGroupController implements BaseController {
  customerGroupRepository: CustomerGroupRepository;
  constructor() {
    this.customerGroupRepository = new CustomerGroupRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const customerGroups = await this.customerGroupRepository.findByCriteria(filters);
      return new SuccessResponse(res, customerGroups);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const customerGroupId: number = parseInt(req.params.id as string);
      const customerGroup = await this.customerGroupRepository.findOne({
        where: {
          id: customerGroupId,
        },
      });
      if (!customerGroup) return new ErrorResponse(res, 'CustomerGroup not found', null, 404);
      return new SuccessResponse(res, customerGroup);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const customerGroupInput = pick(
        CustomerGroupAttributes,
        req.body as unknown as CustomerGroupInput,
      ) as CustomerGroupInput;
      const customerGroup = await this.customerGroupRepository.create(customerGroupInput);
      return new SuccessResponse(res, customerGroup, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const customerGroupId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const customerGroup = await this.customerGroupRepository.findByIdOrFail(customerGroupId);
      const customerGroupInput = pick(
        CustomerGroupAttributes,
        req.body as unknown as CustomerGroupInput,
      ) as CustomerGroupInput;
      const updatedCustomerGroup = await this.customerGroupRepository.update(customerGroupId, customerGroupInput);
      return new SuccessResponse(res, updatedCustomerGroup);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const customerGroupId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const customerGroup = await this.customerGroupRepository.findByIdOrFail(customerGroupId);
      const result = await this.customerGroupRepository.deleteById(customerGroupId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default CustomerGroupController;
