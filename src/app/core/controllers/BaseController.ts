/* eslint-disable no-unused-vars */
import { IErrorResponse, ISuccessResponse } from '../response/BaseResponse';
import { IRequest, IResponse } from '../vendors';
export interface BaseController {
  /**
   * Fetch All list of resource
   * @param req IRequest
   * @param res IResponse
   * @returns ISuccessResponse | IErrorResponse
   */
  index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse>;

  /**
   * Find one resource
   * @param req IRequest
   * @param res IResponse
   * @returns ISuccessResponse | IErrorResponse
   */
  find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse>;

  /**
   * Create new one resource
   * @param req IRequest
   * @param res IResponse
   * @returns ISuccessResponse | IErrorResponse
   */
  create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse>;

  /**
   * Update one existing in resource
   * @param req IRequest
   * @param res IResponse
   * @returns ISuccessResponse | IErrorResponse
   */
  update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse>;

  /**
   * Delete one existing resource
   * @param req IRequest
   * @param res IResponse
   * @returns ISuccessResponse | IErrorResponse
   */
  destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse>;
}
