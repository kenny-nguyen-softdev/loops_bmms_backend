import { BaseMiddleware } from '../core/middlewares/base/BaseMiddleware';
import * as Joi from 'joi';
import { INext, IRequest, IResponse } from '../core/vendors';
import { ErrorResponse } from '../core/response/BaseResponse';
class ValidationMiddleware extends BaseMiddleware {
  constructor() {
    super();
  }

  protected validateData = (schema: Joi.ObjectSchema) => {
    return (req: IRequest, res: IResponse, next: INext) => {
      const { error } = schema.validate(req.body);
      if (error) {
        const errorMessage = error.details.map((err) => err.message).join(', ');
        return new ErrorResponse(res, errorMessage, { errors: error.details }, 400);
      }
      next();
    };
  };

  public handler(schema: Joi.ObjectSchema): any {
    return this.validateData(schema);
  }
}

export default ValidationMiddleware;
