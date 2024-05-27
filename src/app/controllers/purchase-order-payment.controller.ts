/* eslint-disable no-unused-vars */
import { DEBT_TYPES, PERSON_GROUP_TYPES, STATUSES, VOUCHER_TYPES } from '../../constant';
import { PurchaseOrderPaymentAttributes, PurchaseOrderPaymentInput } from '../../models';
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
import PurchaseOrderPaymentRepository from '../repositories/PurchaseOrderPayment/purchase-order-payment.repository';
import VoucherTypeRepository from '../repositories/VoucherType/voucher-type.repository';
import VoucherRepository from '../repositories/Voucher/voucher.repository';
import PurchaseOrderRepository from '../repositories/PurchaseOrder/purchase-order.repository';
import PersonGroupTypeRepository from '../repositories/PersonGroupType/person-group-type.repository';
import DebtTypeRepository from '../repositories/DebtType/debt-type.repository';
import DebtRepository from '../repositories/Debt/debt.repository';
import { generatePVNCode } from '../../utils';
import StatusRepository from '../repositories/Status/status.repository';

class PurchaseOrderPaymentController implements BaseController {
  purchaseOrderPaymentRepository: PurchaseOrderPaymentRepository;
  constructor() {
    this.purchaseOrderPaymentRepository = new PurchaseOrderPaymentRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const purchaseOrderPayments = await this.purchaseOrderPaymentRepository.findByCriteria(filters);
      return new SuccessResponse(res, purchaseOrderPayments);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const purchaseOrderPaymentId: number = parseInt(req.params.id as string);
      const purchaseOrderPayment = await this.purchaseOrderPaymentRepository.findByIdOrFailByCriteria(
        purchaseOrderPaymentId,
        filters,
      );
      return new SuccessResponse(res, purchaseOrderPayment);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const purchaseOrderPaymentInput = pick(
          PurchaseOrderPaymentAttributes,
          req.body as unknown as PurchaseOrderPaymentInput,
        ) as PurchaseOrderPaymentInput;
        // Create purchase order payment
        const purchaseOrderPayment = await this.purchaseOrderPaymentRepository.create(purchaseOrderPaymentInput);
        // Update debt amount in Purchase Order
        const purchaseOrderRepository = new PurchaseOrderRepository();
        const purchaseOrder = await purchaseOrderRepository.findById(purchaseOrderPayment.purchaseOrderId);
        if (purchaseOrder) {
          if (
            !(
              purchaseOrder.totalPrice &&
              Number(purchaseOrder.debtAmount) >= Number(purchaseOrderPayment.amount) &&
              Number(purchaseOrder.totalPrice) >= Number(purchaseOrderPayment.amount)
            )
          ) {
            throw new InternalServerError(
              'The payment amount is not allowed greater than the total price and debt amount in purchase order',
            );
          }
          const statusRepo = new StatusRepository();
          const tradingStatus = await statusRepo.findOne({
            where: {
              key: STATUSES.trading,
            },
          });
          const paidStatus = await statusRepo.findOne({
            where: {
              key: STATUSES.paid,
            },
          });
          await purchaseOrderRepository.update(purchaseOrderPayment.purchaseOrderId, {
            debtAmount: Number(purchaseOrder.debtAmount) - Number(purchaseOrderPayment.amount),
            ...(Number(purchaseOrder.debtAmount) - Number(purchaseOrderPayment.amount) === 0
              ? { paymentStatusId: paidStatus ? paidStatus.id : purchaseOrder.paymentStatusId }
              : { paymentStatusId: tradingStatus ? tradingStatus.id : purchaseOrder.paymentStatusId }),
          });
        }
        // Create payment voucher
        const voucherTypeRepository = new VoucherTypeRepository();
        const paymentVoucherType = await voucherTypeRepository.findOne({
          where: {
            key: VOUCHER_TYPES.paymentVoucher,
          },
        });
        const personGroupTypeRepository = new PersonGroupTypeRepository();
        const personGroupType = await personGroupTypeRepository.findOne({
          where: {
            key: PERSON_GROUP_TYPES.supplier,
          },
        });
        const voucherRepository = new VoucherRepository();
        const newPaymentVoucher = await voucherRepository.create({
          voucherTypeId: paymentVoucherType?.id,
          code: generatePVNCode(),
          value: Number(purchaseOrderPayment.amount),
          description: '',
          recordedDate: purchaseOrderPayment.createdAt,
          voucherGroupId: null,
          customerId: null,
          supplierId: purchaseOrder?.supplierId,
          staffId: null,
          personGroupTypeId: personGroupType?.id,
          paymentMethodId: purchaseOrderPayment.paymentMethodId,
        });
        if (newPaymentVoucher && purchaseOrder && purchaseOrderPayment) {
          // Create debt amount for supplier
          const debtRepository = new DebtRepository();
          const debtTypeRepository = new DebtTypeRepository();
          const supplierDebtType = await debtTypeRepository.findOne({
            where: {
              key: DEBT_TYPES.supplierDebt,
            },
          });
          const currentDateTime: Date = new Date();
          await debtRepository.create({
            supplierId: newPaymentVoucher.supplierId,
            staffId: newPaymentVoucher.staffId,
            purchaseOrderId: null,
            voucherId: newPaymentVoucher.id,
            recordedDate: newPaymentVoucher.createdAt ?? currentDateTime,
            debtAmount: Number(purchaseOrder.debtAmount) - Number(purchaseOrderPayment.amount),
            debtTypeId: supplierDebtType?.id,
          });
        }
        return new SuccessResponse(res, purchaseOrderPayment, 201);
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
      const purchaseOrderPaymentId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const purchaseOrderPayment = await this.purchaseOrderPaymentRepository.findByIdOrFail(purchaseOrderPaymentId);
      const purchaseOrderPaymentInput = pick(
        PurchaseOrderPaymentAttributes,
        req.body as unknown as PurchaseOrderPaymentInput,
      ) as PurchaseOrderPaymentInput;
      const updatedPurchaseOrderPayment = await this.purchaseOrderPaymentRepository.update(
        purchaseOrderPaymentId,
        purchaseOrderPaymentInput,
      );
      return new SuccessResponse(res, updatedPurchaseOrderPayment);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
}
export default PurchaseOrderPaymentController;
