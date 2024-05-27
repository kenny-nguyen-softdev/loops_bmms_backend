import { TaxAttributes, TaxInput } from '../../models';
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
import { GetAllTaxsFilters } from '../repositories/Tax/tax-interface.repository';
import TaxRepository from '../repositories/Tax/tax.repository';

class TaxController implements BaseController {
  taxRepository: TaxRepository;
  constructor() {
    this.taxRepository = new TaxRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as GetAllTaxsFilters;
      const taxes = await this.taxRepository.get(filters);
      return new SuccessResponse(res, taxes);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const taxId: number = parseInt(req.params.id as string);
      const tax = await this.taxRepository.findOne({
        where: {
          id: taxId,
        },
      });
      if (!tax) return new ErrorResponse(res, 'Tax not found', null, 404);
      return new SuccessResponse(res, tax);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const taxInput = pick(TaxAttributes, req.body as unknown as TaxInput) as TaxInput;
      const tax = await this.taxRepository.create(taxInput);
      return new SuccessResponse(res, tax, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const taxId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const tax = await this.taxRepository.findByIdOrFail(taxId);
      const taxInput = pick(TaxAttributes, req.body as unknown as TaxInput) as TaxInput;
      const updatedTax = await this.taxRepository.update(taxId, taxInput);
      return new SuccessResponse(res, updatedTax);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const taxId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const tax = await this.taxRepository.findByIdOrFail(taxId);
      const result = await this.taxRepository.deleteById(taxId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default TaxController;
