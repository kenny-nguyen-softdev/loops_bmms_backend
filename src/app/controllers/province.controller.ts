import { ProvinceAttributes, ProvinceInput } from '../../models';
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
import ProvinceRepository from '../repositories/Province/province.repository';

class ProvinceController implements BaseController {
  provinceRepository: ProvinceRepository;
  constructor() {
    this.provinceRepository = new ProvinceRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const provinces = await this.provinceRepository.findByCriteria(filters);
      return new SuccessResponse(res, provinces);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const provinceId: number = parseInt(req.params.id as string);
      const province = await this.provinceRepository.findByIdOrFailByCriteria(provinceId, filters);
      return new SuccessResponse(res, province);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const provinceInput = pick(ProvinceAttributes, req.body as unknown as ProvinceInput) as ProvinceInput;
      const province = await this.provinceRepository.create(provinceInput);
      return new SuccessResponse(res, province, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const provinceId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const province = await this.provinceRepository.findByIdOrFail(provinceId);
      const provinceInput = pick(ProvinceAttributes, req.body as unknown as ProvinceInput) as ProvinceInput;
      const updatedProvince = await this.provinceRepository.update(provinceId, provinceInput);
      return new SuccessResponse(res, updatedProvince);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const provinceId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const province = await this.provinceRepository.findByIdOrFail(provinceId);
      const result = await this.provinceRepository.deleteById(provinceId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default ProvinceController;
