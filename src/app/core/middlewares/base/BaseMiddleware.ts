/* eslint-disable no-unused-vars */
import { IMiddleware } from '../interfaces/base/IMiddleware';
import * as Joi from 'joi';
export abstract class BaseMiddleware implements IMiddleware {
  constructor() {}
  public handler(schema: Joi.ObjectSchema): any {}
}
