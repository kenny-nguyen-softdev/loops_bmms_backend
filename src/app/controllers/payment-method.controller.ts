import { BaseController } from '../core/controllers/BaseController';
import { ErrorResponse, IErrorResponse, ISuccessResponse, SuccessResponse } from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import PaymentMethodRepository from '../repositories/PaymentMethod/payment-method.repository';

class PaymentMethodController implements BaseController {
  paymentMethodRepository: PaymentMethodRepository;
  constructor() {
    this.paymentMethodRepository = new PaymentMethodRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const paymentMethods = await this.paymentMethodRepository.find();
      return new SuccessResponse(res, paymentMethods);
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
export default PaymentMethodController;
