/* eslint-disable no-unused-vars */
import { BaseController } from '../core/controllers/BaseController';
import { ErrorResponse, IErrorResponse, ISuccessResponse, SuccessResponse } from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import DebtTypeRepository from '../repositories/DebtType/debt-type.repository';

class DebtTypeController implements BaseController {
  debtTypeRepository: DebtTypeRepository;
  constructor() {
    this.debtTypeRepository = new DebtTypeRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const debtTypes = await this.debtTypeRepository.find();
      return new SuccessResponse(res, debtTypes);
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
export default DebtTypeController;
