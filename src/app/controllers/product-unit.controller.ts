/* eslint-disable no-unused-vars */
import { ProductUnitAttributes, ProductUnitInput } from '../../models';
import { BaseController } from '../core/controllers/BaseController';
import { ErrorResponse, IErrorResponse, ISuccessResponse, NotFoundError, SuccessResponse } from '../core/response/BaseResponse';
import { pick } from '../core/utils';
import { IRequest, IResponse } from '../core/vendors';
import ProductUnitRepository from '../repositories/ProductUnit/product-unit.repository';

class ProductUnitController implements BaseController {
  productUnitRepository: ProductUnitRepository;
  constructor() {
    this.productUnitRepository = new ProductUnitRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productUnits = await this.productUnitRepository.find();
      return new SuccessResponse(res, productUnits);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productUnitId: number = parseInt(req.params.id as string);
      const productUnit = await this.productUnitRepository.findOne({
        where: {
          id: productUnitId,
        },
      });
      if (!productUnit) return new ErrorResponse(res, 'ProductUnit not found', null, 404);
      return new SuccessResponse(res, productUnit);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productUnitInput = pick(ProductUnitAttributes, req.body as unknown as ProductUnitInput) as ProductUnitInput;
      const productUnit = await this.productUnitRepository.create(productUnitInput);
      return new SuccessResponse(res, productUnit, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productUnitId: number = parseInt(req.params.id as string);
      await this.productUnitRepository.findByIdOrFail(productUnitId);
      const productUnitInput = pick(ProductUnitAttributes, req.body as unknown as ProductUnitInput) as ProductUnitInput;
      const updatedProductUnit = await this.productUnitRepository.update(productUnitId, productUnitInput);
      return new SuccessResponse(res, updatedProductUnit);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const productUnitId: number = parseInt(req.params.id as string);
      await this.productUnitRepository.findByIdOrFail(productUnitId);
      const result = await this.productUnitRepository.deleteById(productUnitId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default ProductUnitController;
