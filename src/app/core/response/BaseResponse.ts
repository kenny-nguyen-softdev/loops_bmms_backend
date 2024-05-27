import { IResponse } from '../vendors';

export interface ISuccessResponse {
  response: IResponse;
}

export interface IErrorResponse {
  response: IResponse;
}

export class SuccessResponse implements ISuccessResponse {
  response: IResponse;

  constructor(
    response: IResponse,
    bodyData: any,
    statusCode = 200,
    header = {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Headers': 'Content-Type',
      'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, PATCH, OPTIONS',
    },
  ) {
    this.response = response;
    this.response.status(statusCode).header(header).send(bodyData);
  }
}

export class ErrorResponse {
  public response: IResponse;

  constructor(response: IResponse, message: string, data?: any, statusCode = 500) {
    const bodyData = JSON.stringify({ message, data });
    this.response = response;
    this.response
      .status(statusCode)
      .header({
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Headers': 'Content-Type',
        'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, PATCH, OPTIONS',
      })
      .send(bodyData);
  }
}

export class UnauthorizedError extends Error {
  public statusCode: number;
  constructor(message: string) {
    super(message);
    this.statusCode = 401;
  }
}

export class ForbiddenError extends Error {
  public statusCode: number;
  constructor(message: string) {
    super(message);
    this.statusCode = 403;
  }
}

export class NotFoundError extends Error {
  public statusCode: number;
  constructor(message: string) {
    super(message);
    this.statusCode = 404;
  }
}

export class InternalServerError extends Error {
  public statusCode: number;
  constructor(message: string) {
    super(message);
    this.statusCode = 500;
  }
}
