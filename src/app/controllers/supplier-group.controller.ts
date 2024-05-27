/* eslint-disable no-unused-vars */
import { SupplierGroupAttributes, SupplierGroupInput } from '../../models';
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
import SupplierGroupRepository from '../repositories/SupplierGroup/supplier-group.repository';

class SupplierGroupController implements BaseController {
  supplierGroupRepository: SupplierGroupRepository;
  constructor() {
    this.supplierGroupRepository = new SupplierGroupRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const supplierGroups = await this.supplierGroupRepository.findByCriteria(filters);
      return new SuccessResponse(res, supplierGroups);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const supplierGroupId: number = parseInt(req.params.id as string);
      const supplierGroup = await this.supplierGroupRepository.findOne({
        where: {
          id: supplierGroupId,
        },
      });
      if (!supplierGroup) return new ErrorResponse(res, 'SupplierGroup not found', null, 404);
      return new SuccessResponse(res, supplierGroup);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const supplierGroupInput = pick(
        SupplierGroupAttributes,
        req.body as unknown as SupplierGroupInput,
      ) as SupplierGroupInput;
      const supplierGroup = await this.supplierGroupRepository.create(supplierGroupInput);
      return new SuccessResponse(res, supplierGroup, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const supplierGroupId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const supplierGroup = await this.supplierGroupRepository.findByIdOrFail(supplierGroupId);
      const supplierGroupInput = pick(
        SupplierGroupAttributes,
        req.body as unknown as SupplierGroupInput,
      ) as SupplierGroupInput;
      const updatedSupplierGroup = await this.supplierGroupRepository.update(supplierGroupId, supplierGroupInput);
      return new SuccessResponse(res, updatedSupplierGroup);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const supplierGroupId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const supplierGroup = await this.supplierGroupRepository.findByIdOrFail(supplierGroupId);
      const result = await this.supplierGroupRepository.deleteById(supplierGroupId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default SupplierGroupController;
