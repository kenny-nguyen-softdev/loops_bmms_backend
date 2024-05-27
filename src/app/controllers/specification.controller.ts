/* eslint-disable no-unused-vars */
import { SpecificationAttributes, SpecificationInput } from '../../models';
import { BaseController } from '../core/controllers/BaseController';
import { ErrorResponse, IErrorResponse, ISuccessResponse, NotFoundError, SuccessResponse } from '../core/response/BaseResponse';
import { pick } from '../core/utils';
import { IRequest, IResponse } from '../core/vendors';
import SpecificationRepository from '../repositories/Specification/specification.repository';

class SpecificationController implements BaseController {
  specificationRepository: SpecificationRepository;
  constructor() {
    this.specificationRepository = new SpecificationRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const specifications = await this.specificationRepository.find();
      return new SuccessResponse(res, specifications);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const specificationId: number = parseInt(req.params.id as string);
      const specification = await this.specificationRepository.findOne({
        where: {
          id: specificationId,
        },
      });
      if (!specification) return new ErrorResponse(res, 'Specification not found', null, 404);
      return new SuccessResponse(res, specification);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const specificationInput = pick(SpecificationAttributes, req.body as unknown as SpecificationInput) as SpecificationInput;
      const specification = await this.specificationRepository.create(specificationInput);
      return new SuccessResponse(res, specification, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const specificationId: number = parseInt(req.params.id as string);
      await this.specificationRepository.findByIdOrFail(specificationId);
      const specificationInput = pick(SpecificationAttributes, req.body as unknown as SpecificationInput) as SpecificationInput;
      const updatedSpecification = await this.specificationRepository.update(specificationId, specificationInput);
      return new SuccessResponse(res, updatedSpecification);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const specificationId: number = parseInt(req.params.id as string);
      await this.specificationRepository.findByIdOrFail(specificationId);
      const result = await this.specificationRepository.deleteById(specificationId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default SpecificationController;
