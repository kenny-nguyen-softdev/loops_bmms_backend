/* eslint-disable no-unused-vars */
import { OrderPaymentAttributes, OrderPaymentInput } from '../../models';
import { BaseController } from '../core/controllers/BaseController';
import sequelizeConnection from '../core/db/connection';
import {
  ErrorResponse,
  IErrorResponse,
  ISuccessResponse,
  InternalServerError,
  NotFoundError,
  SuccessResponse,
} from '../core/response/BaseResponse';
import { pick } from '../core/utils';
import { IRequest, IResponse } from '../core/vendors';
import OrderPaymentRepository from '../repositories/OrderPayment/order-payment.repository';
import OrderRepository from '../repositories/Order/order.repository';
import StatusRepository from '../repositories/Status/status.repository';
import { STATUSES, VOUCHER_TYPES, PERSON_GROUP_TYPES, DEBT_TYPES, DELIVERY_METHODS } from '../../constant';
import VoucherTypeRepository from '../repositories/VoucherType/voucher-type.repository';
import PersonGroupTypeRepository from '../repositories/PersonGroupType/person-group-type.repository';
import VoucherRepository from '../repositories/Voucher/voucher.repository';
import { generateRVNCode } from '../../utils';
import DebtRepository from '../repositories/Debt/debt.repository';
import DebtTypeRepository from '../repositories/DebtType/debt-type.repository';
import DeliveryMethodRepository from '../repositories/DeliveryMethod/delivery-method.repository';

class OrderPaymentController implements BaseController {
  orderPaymentRepository: OrderPaymentRepository;
  constructor() {
    this.orderPaymentRepository = new OrderPaymentRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const orderPayments = await this.orderPaymentRepository.findByCriteria(filters);
      return new SuccessResponse(res, orderPayments);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const orderPaymentId: number = parseInt(req.params.id as string);
      const orderPayment = await this.orderPaymentRepository.findByIdOrFailByCriteria(orderPaymentId, filters);
      return new SuccessResponse(res, orderPayment);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const orderPaymentInput = pick(
          OrderPaymentAttributes,
          req.body as unknown as OrderPaymentInput,
        ) as OrderPaymentInput;
        // Create purchase order payment
        const orderPayment = await this.orderPaymentRepository.create(orderPaymentInput);
        // Update debt amount in Purchase Order
        const orderRepository = new OrderRepository();
        const order = await orderRepository.findById(orderPayment.orderId);
        if (order && order?.deliveryMethodId) {
          if (
            !(
              order.totalPrice &&
              Number(order.debtAmount) >= Number(orderPayment.amount) &&
              Number(order.totalPrice) >= Number(orderPayment.amount)
            )
          ) {
            throw new InternalServerError(
              'The payment amount is not allowed greater than the total price and debt amount in order',
            );
          }
          const statusRepo = new StatusRepository();
          const [
            orderPartialPaidStatus,
            orderFullPaidStatus,
            shippedStatus,
            orderProcessingStatus,
            orderCompletedStatus,
            approvedStatus,
            fullyExportedStatus
          ] = await Promise.all([
            statusRepo.findOne({ where: { key: STATUSES.orderPartialPaid } }),
            statusRepo.findOne({ where: { key: STATUSES.orderFullPaid } }),
            statusRepo.findOne({ where: { key: STATUSES.shipped } }),
            statusRepo.findOne({ where: { key: STATUSES.orderProcessing } }),
            statusRepo.findOne({ where: { key: STATUSES.orderCompleted } }),
            statusRepo.findOne({ where: { key: STATUSES.approvedOrder } }),
            statusRepo.findOne({ where: { key: STATUSES.fullyExported } })
          ]);
          
          const deliveryMethodRepository = new DeliveryMethodRepository();
          const deliveryMethod = await deliveryMethodRepository.findByIdOrFail(order.deliveryMethodId);
          await orderRepository.update(orderPayment.orderId, {
            debtAmount: Number(order.debtAmount) - Number(orderPayment.amount),
            ...(Number(order.debtAmount) - Number(orderPayment.amount) === 0
              ? { paymentStatusId: orderFullPaidStatus ? orderFullPaidStatus.id : order.paymentStatusId }
              : {
                  paymentStatusId: orderPartialPaidStatus ? orderPartialPaidStatus.id : order.paymentStatusId,
                }),
            ...((deliveryMethod.key === DELIVERY_METHODS.shipping &&
              Number(order.debtAmount) - Number(orderPayment.amount) === 0 &&
              order.shippingStatusId === shippedStatus?.id &&
              order.approvedStatusId === approvedStatus?.id &&
              order.exportedInventoryStatusId === fullyExportedStatus?.id) ||
            (deliveryMethod.key === DELIVERY_METHODS.receiveInStore &&
              Number(order.debtAmount) - Number(orderPayment.amount) === 0 &&
              order.approvedStatusId === approvedStatus?.id &&
              order.exportedInventoryStatusId === fullyExportedStatus?.id)
              ? { orderStatusId: orderCompletedStatus ? orderCompletedStatus.id : order.orderStatusId }
              : { orderStatusId: order.orderStatusId }),
          });
        }
        // Create receipt voucher
        const voucherTypeRepository = new VoucherTypeRepository();
        const receiptVoucherType = await voucherTypeRepository.findOne({
          where: {
            key: VOUCHER_TYPES.receiptVoucher,
          },
        });
        const personGroupTypeRepository = new PersonGroupTypeRepository();
        const personGroupType = await personGroupTypeRepository.findOne({
          where: {
            key: PERSON_GROUP_TYPES.customer,
          },
        });
        const voucherRepository = new VoucherRepository();
        const newReceiptVoucher = await voucherRepository.create({
          voucherTypeId: receiptVoucherType?.id,
          code: generateRVNCode(),
          value: Number(orderPayment.amount),
          description: '',
          recordedDate: orderPayment.createdAt,
          voucherGroupId: null,
          supplierId: null,
          customerId: order?.customerId,
          staffId: null,
          personGroupTypeId: personGroupType?.id,
          paymentMethodId: orderPayment.paymentMethodId,
        });
        if (newReceiptVoucher && order && orderPayment) {
          // Create debt amount for customer
          const debtRepository = new DebtRepository();
          const debtTypeRepository = new DebtTypeRepository();
          const customerDebtType = await debtTypeRepository.findOne({
            where: {
              key: DEBT_TYPES.customerDebt,
            },
          });
          const currentDateTime: Date = new Date();
          await debtRepository.create({
            customerId: newReceiptVoucher.customerId,
            staffId: newReceiptVoucher.staffId,
            orderId: order.id,
            voucherId: newReceiptVoucher.id,
            recordedDate: newReceiptVoucher.createdAt ?? currentDateTime,
            debtAmount: Number(order.debtAmount) - Number(orderPayment.amount),
            debtTypeId: customerDebtType?.id,
          });
        }
        return new SuccessResponse(res, orderPayment, 201);
      });
    } catch (error) {
      return new ErrorResponse(
        res,
        (error as Error).message,
        null,
        (error as NotFoundError | InternalServerError).statusCode,
      );
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const orderPaymentId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const orderPayment = await this.orderPaymentRepository.findByIdOrFail(orderPaymentId);
      const orderPaymentInput = pick(
        OrderPaymentAttributes,
        req.body as unknown as OrderPaymentInput,
      ) as OrderPaymentInput;
      const updatedOrderPayment = await this.orderPaymentRepository.update(orderPaymentId, orderPaymentInput);
      return new SuccessResponse(res, updatedOrderPayment);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
}
export default OrderPaymentController;
