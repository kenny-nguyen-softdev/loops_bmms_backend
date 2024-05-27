import { DistrictAttributes, DistrictInput } from '../../models';
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
import DistrictRepository from '../repositories/District/district.repository';

class DistrictController implements BaseController {
  districtRepository: DistrictRepository;
  constructor() {
    this.districtRepository = new DistrictRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const districts = await this.districtRepository.findByCriteria(filters);
      return new SuccessResponse(res, districts);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const districtId: number = parseInt(req.params.id as string);
      const district = await this.districtRepository.findByIdOrFailByCriteria(districtId, filters);
      return new SuccessResponse(res, district);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const districtInput = pick(DistrictAttributes, req.body as unknown as DistrictInput) as DistrictInput;
      const district = await this.districtRepository.create(districtInput);
      return new SuccessResponse(res, district, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const districtId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const district = await this.districtRepository.findByIdOrFail(districtId);
      const districtInput = pick(DistrictAttributes, req.body as unknown as DistrictInput) as DistrictInput;
      const updatedDistrict = await this.districtRepository.update(districtId, districtInput);
      return new SuccessResponse(res, updatedDistrict);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const districtId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const district = await this.districtRepository.findByIdOrFail(districtId);
      const result = await this.districtRepository.deleteById(districtId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default DistrictController;
