/* eslint-disable no-unused-vars */
import { VOUCHER_TYPES } from '../../constant';
import { VoucherAttributes, VoucherInput } from '../../models';
import { generatePVNCode, generateRVNCode } from '../../utils';
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
import VoucherRepository from '../repositories/Voucher/voucher.repository';
import VoucherTypeRepository from '../repositories/VoucherType/voucher-type.repository';

class VoucherController implements BaseController {
  voucherRepository: VoucherRepository;
  constructor() {
    this.voucherRepository = new VoucherRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const vouchers = await this.voucherRepository.findByCriteria(filters);
      return new SuccessResponse(res, vouchers);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const voucherId: number = parseInt(req.params.id as string);
      const voucher = await this.voucherRepository.findByIdOrFailByCriteria(voucherId, filters);
      return new SuccessResponse(res, voucher);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const voucherInput = pick(VoucherAttributes, req.body as unknown as VoucherInput) as VoucherInput;
      if (voucherInput.voucherTypeId) {
        const voucherTypeRepository = new VoucherTypeRepository();
        const voucherType = await voucherTypeRepository.findById(voucherInput.voucherTypeId);
        if (voucherType && voucherType.key === VOUCHER_TYPES.paymentVoucher) {
          voucherInput.code = generatePVNCode();
        }
        if (voucherType && voucherType.key === VOUCHER_TYPES.receiptVoucher) {
          voucherInput.code = generateRVNCode();
        }
      }
      const voucher = await this.voucherRepository.create(voucherInput);
      return new SuccessResponse(res, voucher, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const voucherId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const voucher = await this.voucherRepository.findByIdOrFail(voucherId);
      const voucherInput = pick(VoucherAttributes, req.body as unknown as VoucherInput) as VoucherInput;
      const updatedVoucher = await this.voucherRepository.update(voucherId, voucherInput);
      return new SuccessResponse(res, updatedVoucher);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
}
export default VoucherController;
