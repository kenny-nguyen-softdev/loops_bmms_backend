import { VoucherGroupAttributes, VoucherGroupInput } from '../../models';
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
import VoucherGroupRepository from '../repositories/VoucherGroup/voucher-group.repository';

class VoucherGroupController implements BaseController {
  voucherGroupRepository: VoucherGroupRepository;
  constructor() {
    this.voucherGroupRepository = new VoucherGroupRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const voucherGroups = await this.voucherGroupRepository.findByCriteria(filters);
      return new SuccessResponse(res, voucherGroups);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const voucherGroupId: number = parseInt(req.params.id as string);
      const voucherGroup = await this.voucherGroupRepository.findByIdOrFailByCriteria(voucherGroupId, filters);
      return new SuccessResponse(res, voucherGroup);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const voucherGroupInput = pick(
        VoucherGroupAttributes,
        req.body as unknown as VoucherGroupInput,
      ) as VoucherGroupInput;
      const voucherGroup = await this.voucherGroupRepository.create(voucherGroupInput);
      return new SuccessResponse(res, voucherGroup, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const voucherGroupId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const voucherGroup = await this.voucherGroupRepository.findByIdOrFail(voucherGroupId);
      const voucherGroupInput = pick(
        VoucherGroupAttributes,
        req.body as unknown as VoucherGroupInput,
      ) as VoucherGroupInput;
      const updatedVoucherGroup = await this.voucherGroupRepository.update(voucherGroupId, voucherGroupInput);
      return new SuccessResponse(res, updatedVoucherGroup);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const voucherGroupId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const voucherGroup = await this.voucherGroupRepository.findByIdOrFail(voucherGroupId);
      const result = await this.voucherGroupRepository.deleteById(voucherGroupId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default VoucherGroupController;
