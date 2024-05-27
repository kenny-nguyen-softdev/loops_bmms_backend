/* eslint-disable no-unused-vars */
import { StatusAttributes, StatusInput } from '../../models';
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
import StatusRepository from '../repositories/Status/status.repository';

class StatusController implements BaseController {
  statusRepository: StatusRepository;
  constructor() {
    this.statusRepository = new StatusRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const statuses = await this.statusRepository.find();
      return new SuccessResponse(res, statuses);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const statusId: number = parseInt(req.params.id as string);
      const status = await this.statusRepository.findOne({
        where: {
          id: statusId,
        },
      });
      if (!status) return new ErrorResponse(res, 'Status not found', null, 404);
      return new SuccessResponse(res, status);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const statusInput = pick(StatusAttributes, req.body as unknown as StatusInput) as StatusInput;
      const status = await this.statusRepository.create(statusInput);
      return new SuccessResponse(res, status, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const statusId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const status = await this.statusRepository.findByIdOrFail(statusId);
      const statusInput = pick(StatusAttributes, req.body as unknown as StatusInput) as StatusInput;
      const updatedStatus = await this.statusRepository.update(statusId, statusInput);
      return new SuccessResponse(res, updatedStatus);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const statusId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const status = await this.statusRepository.findByIdOrFail(statusId);
      const result = await this.statusRepository.deleteById(statusId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default StatusController;
