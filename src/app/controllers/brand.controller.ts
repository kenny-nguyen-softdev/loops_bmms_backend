import { BrandAttributes, BrandInput } from '../../models';
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
import BrandRepository from '../repositories/Brand/brand.repository';

class BrandController implements BaseController {
  brandRepository: BrandRepository;
  constructor() {
    this.brandRepository = new BrandRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const brands = await this.brandRepository.get();
      return new SuccessResponse(res, brands);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const brandId: number = parseInt(req.params.id as string);
      const brand = await this.brandRepository.findOne({
        where: {
          id: brandId,
        },
      });
      if (!brand) return new ErrorResponse(res, 'Brand not found', null, 404);
      return new SuccessResponse(res, brand);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const brandInput = pick(BrandAttributes, req.body as unknown as BrandInput) as BrandInput;
      const brand = await this.brandRepository.create(brandInput);
      return new SuccessResponse(res, brand, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const brandId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const brand = await this.brandRepository.findByIdOrFail(brandId);
      const brandInput = pick(BrandAttributes, req.body as unknown as BrandInput) as BrandInput;
      const updatedBrand = await this.brandRepository.update(brandId, brandInput);
      return new SuccessResponse(res, updatedBrand);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const brandId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const brand = await this.brandRepository.findByIdOrFail(brandId);
      const result = await this.brandRepository.deleteById(brandId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async reactivate(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const brandId: number = parseInt(req.params.id as string);
      let brand = await this.brandRepository.findByIdOrFail(brandId);
      if (brand?.isActive === true) {
        brand = await this.brandRepository.deactive(brandId);
      } else {
        brand = await this.brandRepository.active(brandId);
      }
      return new SuccessResponse(res, brand);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default BrandController;
