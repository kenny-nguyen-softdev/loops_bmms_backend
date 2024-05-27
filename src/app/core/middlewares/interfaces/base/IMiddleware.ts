/* eslint-disable no-unused-vars */
import * as Joi from 'joi';
export interface IMiddleware {
  handler(schema: Joi.ObjectSchema): any;
}
