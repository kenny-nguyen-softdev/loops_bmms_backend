/* eslint-disable no-unused-vars */
import { Response } from 'express';

/**
 * Defines Custom method types over Express's Response
 */
export interface IResponse extends Response {
  redirect(arg0: any): unknown;
}
