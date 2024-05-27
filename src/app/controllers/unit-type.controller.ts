/* eslint-disable no-unused-vars */
import { BaseController } from '../core/controllers/BaseController';
import { ErrorResponse, IErrorResponse, ISuccessResponse, SuccessResponse } from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import UnitTypeRepository from '../repositories/UnitType/unit-type.repository';

class UnitTypeController implements BaseController {
  unitTypeRepository: UnitTypeRepository;
  constructor() {
    this.unitTypeRepository = new UnitTypeRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const unitTypes = await this.unitTypeRepository.find();
      return new SuccessResponse(res, unitTypes);
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
export default UnitTypeController;
