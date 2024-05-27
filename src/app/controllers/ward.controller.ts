import { WardAttributes, WardInput } from '../../models';
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
import WardRepository from '../repositories/Ward/ward.repository';

class WardController implements BaseController {
  wardRepository: WardRepository;
  constructor() {
    this.wardRepository = new WardRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const wards = await this.wardRepository.findByCriteria(filters);
      return new SuccessResponse(res, wards);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const wardId: number = parseInt(req.params.id as string);
      const ward = await this.wardRepository.findByIdOrFailByCriteria(wardId, filters);
      return new SuccessResponse(res, ward);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const wardInput = pick(WardAttributes, req.body as unknown as WardInput) as WardInput;
      const ward = await this.wardRepository.create(wardInput);
      return new SuccessResponse(res, ward, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const wardId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const ward = await this.wardRepository.findByIdOrFail(wardId);
      const wardInput = pick(WardAttributes, req.body as unknown as WardInput) as WardInput;
      const updatedWard = await this.wardRepository.update(wardId, wardInput);
      return new SuccessResponse(res, updatedWard);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const wardId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const ward = await this.wardRepository.findByIdOrFail(wardId);
      const result = await this.wardRepository.deleteById(wardId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default WardController;
