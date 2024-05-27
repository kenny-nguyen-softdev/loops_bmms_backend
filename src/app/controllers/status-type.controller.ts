/* eslint-disable no-unused-vars */
import { BaseController } from '../core/controllers/BaseController';
import { ErrorResponse, IErrorResponse, ISuccessResponse, SuccessResponse } from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import StatusTypeRepository from '../repositories/StatusType/status-type.repository';

class StatusTypeController implements BaseController {
  statusTypeRepository: StatusTypeRepository;
  constructor() {
    this.statusTypeRepository = new StatusTypeRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const statusTypes = await this.statusTypeRepository.find();
      return new SuccessResponse(res, statusTypes);
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
export default StatusTypeController;
