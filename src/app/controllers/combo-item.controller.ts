/* eslint-disable no-unused-vars */
import { ComboItemAttributes, ComboItemInput } from '../../models';
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
import ComboItemRepository from '../repositories/ComboItem/combo-item.repository';

class ComboItemController implements BaseController {
  comboItemRepository: ComboItemRepository;
  constructor() {
    this.comboItemRepository = new ComboItemRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const comboItems = await this.comboItemRepository.findByCriteria(filters);
      return new SuccessResponse(res, comboItems);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const comboItemId: number = parseInt(req.params.id as string);
      const comboItem = await this.comboItemRepository.findByIdOrFailByCriteria(comboItemId, filters);
      return new SuccessResponse(res, comboItem);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const comboItemInput = pick(ComboItemAttributes, req.body as unknown as ComboItemInput) as ComboItemInput;
      const comboItem = await this.comboItemRepository.create(comboItemInput);
      return new SuccessResponse(res, comboItem, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const comboItemId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const comboItem = await this.comboItemRepository.findByIdOrFail(comboItemId);
      const comboItemInput = pick(ComboItemAttributes, req.body as unknown as ComboItemInput) as ComboItemInput;
      const updatedComboItem = await this.comboItemRepository.update(comboItemId, comboItemInput);
      return new SuccessResponse(res, updatedComboItem);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const comboItemId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const comboItem = await this.comboItemRepository.findByIdOrFail(comboItemId);
      const result = await this.comboItemRepository.deleteById(comboItemId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default ComboItemController;
