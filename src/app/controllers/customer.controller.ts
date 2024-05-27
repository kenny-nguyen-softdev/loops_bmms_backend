import {
  CustomerAttributes,
  CustomerInput,
  District,
  Province,
  Ward,
  Debt,
  User,
  Voucher,
  VoucherType,
  Order,
} from '../../models';
import { BaseController } from '../core/controllers/BaseController';
import {
  ISuccessResponse,
  IErrorResponse,
  ErrorResponse,
  SuccessResponse,
  NotFoundError,
} from '../core/response/BaseResponse';
import { pick } from '../core/utils';
import { IRequest, IResponse } from '../core/vendors';
import CustomerRepository from '../repositories/Customer/customer.repository';

class CustomerController implements BaseController {
  customerRepository: CustomerRepository;
  constructor() {
    this.customerRepository = new CustomerRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const customers = await this.customerRepository.findByCriteria(filters, {
        include: {
          Ward: {
            model: Ward,
            as: 'ward',
            include: [
              {
                model: District,
                as: 'district',
                include: [
                  {
                    model: Province,
                    as: 'province',
                  },
                ],
              },
            ],
          },
          Debts: {
            model: Debt,
            as: 'debts',
            include: [
              {
                model: User,
                as: 'staff',
              },
              {
                model: Voucher,
                as: 'voucher',
                include: [
                  {
                    model: VoucherType,
                    as: 'voucherType',
                  },
                ],
              },
              {
                model: Order,
                as: 'order',
              },
            ],
            order: [['createdAt', 'DESC']],
          },
        },
      });
      return new SuccessResponse(res, customers);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const customerId: number = parseInt(req.params.id as string);
      const filters = req.query as unknown as any;
      const customer = await this.customerRepository.findByIdOrFailByCriteria(customerId, filters, {
        include: {
          Ward: {
            model: Ward,
            as: 'ward',
            include: [
              {
                model: District,
                as: 'district',
                include: [
                  {
                    model: Province,
                    as: 'province',
                  },
                ],
              },
            ],
          },
          Debts: {
            model: Debt,
            as: 'debts',
            include: [
              {
                model: User,
                as: 'staff',
              },
              {
                model: Voucher,
                as: 'voucher',
                include: [
                  {
                    model: VoucherType,
                    as: 'voucherType',
                  },
                ],
              },
              {
                model: Order,
                as: 'order',
              },
            ],
            order: [['createdAt', 'DESC']],
          },
        },
      });
      return new SuccessResponse(res, customer);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const customerInput = pick(CustomerAttributes, req.body as unknown as CustomerInput) as CustomerInput;
      const existPhoneNumberInput = await this.customerRepository.findOne({
        where: { phoneNumber: customerInput.phoneNumber },
      });
      if (existPhoneNumberInput) return new ErrorResponse(res, 'This phone number existed', 500);
      const customer = await this.customerRepository.create(customerInput);
      return new SuccessResponse(res, customer, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const customerId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars, @typescript-eslint/no-unused-vars
      const customer = await this.customerRepository.findByIdOrFail(customerId);
      const customerInput = pick(CustomerAttributes, req.body as unknown as CustomerInput) as CustomerInput;
      if (customer?.phoneNumber !== customerInput.phoneNumber) {
        const existPhoneNumberInput = await this.customerRepository.findOne({
          where: { phoneNumber: customerInput.phoneNumber },
        });
        if (existPhoneNumberInput) return new ErrorResponse(res, 'This phone number existed', 500);
      }
      const updatedCustomer = await this.customerRepository.update(customerId, customerInput);
      return new SuccessResponse(res, updatedCustomer);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const customerId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line @typescript-eslint/no-unused-vars, no-unused-vars
      const customer = await this.customerRepository.findByIdOrFail(customerId);
      const result = await this.customerRepository.deleteById(customerId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async reactivate(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const customerId: number = parseInt(req.params.id as string);
      let customer = await this.customerRepository.findByIdOrFail(customerId);
      if (customer?.isActive === true) {
        customer = await this.customerRepository.deactive(customerId);
      } else {
        customer = await this.customerRepository.active(customerId);
      }
      return new SuccessResponse(res, customer);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default CustomerController;
