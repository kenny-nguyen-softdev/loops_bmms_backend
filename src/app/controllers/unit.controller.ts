import { UnitAttributes, UnitInput } from '../../models';
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
import { GetAllUnitsFilters } from '../repositories/Unit/unit-interface.repository';
import UnitRepository from '../repositories/Unit/unit.repository';

class UnitController implements BaseController {
  unitRepository: UnitRepository;
  constructor() {
    this.unitRepository = new UnitRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as GetAllUnitsFilters;
      const units = await this.unitRepository.get(filters);
      return new SuccessResponse(res, units);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const unitId: number = parseInt(req.params.id as string);
      const unit = await this.unitRepository.findOne({
        where: {
          id: unitId,
        },
      });
      if (!unit) return new ErrorResponse(res, 'Unit not found', null, 404);
      return new SuccessResponse(res, unit);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const unitInput = pick(UnitAttributes, req.body as unknown as UnitInput) as UnitInput;
      const unit = await this.unitRepository.create(unitInput);
      return new SuccessResponse(res, unit, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const unitId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const unit = await this.unitRepository.findByIdOrFail(unitId);
      const unitInput = pick(UnitAttributes, req.body as unknown as UnitInput) as UnitInput;
      const updatedUnit = await this.unitRepository.update(unitId, unitInput);
      return new SuccessResponse(res, updatedUnit);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const unitId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const unit = await this.unitRepository.findByIdOrFail(unitId);
      const result = await this.unitRepository.deleteById(unitId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default UnitController;
