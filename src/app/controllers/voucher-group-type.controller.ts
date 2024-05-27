/* eslint-disable no-unused-vars */
import { BaseController } from '../core/controllers/BaseController';
import { ErrorResponse, IErrorResponse, ISuccessResponse, SuccessResponse } from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import VoucherGroupTypeRepository from '../repositories/VoucherGroupType/voucher-group-type.repository';

class VoucherGroupTypeController implements BaseController {
  voucherGroupTypeRepository: VoucherGroupTypeRepository;
  constructor() {
    this.voucherGroupTypeRepository = new VoucherGroupTypeRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const voucherGroupTypes = await this.voucherGroupTypeRepository.find();
      return new SuccessResponse(res, voucherGroupTypes);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
  update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
}
export default VoucherGroupTypeController;
