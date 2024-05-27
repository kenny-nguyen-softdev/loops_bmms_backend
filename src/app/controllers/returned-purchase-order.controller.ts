import {
  PurchaseOrder,
  ReturnedPurchaseOrderAttributes,
  ReturnedPurchaseOrderInput,
  ReturnedPurchaseOrderProductItem,
} from '../../models';
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
import ReturnedPurchaseOrderRepository from '../repositories/ReturnedPurchaseOrder/returned-purchase-order.repository';
import ReturnedPurchaseOrderProductItemRepository from '../repositories/ReturnedPurchaseOrderProductItem/returned-purchase-order-product-item.repository';
import PurchaseOrderRepository from '../repositories/PurchaseOrder/purchase-order.repository';
import { DEBT_TYPES, PERSON_GROUP_TYPES, STATUSES, VOUCHER_TYPES } from '../../constant';
import StatusRepository from '../repositories/Status/status.repository';
import ProductRepository from '../repositories/Product/product.repository';
import DebtTypeRepository from '../repositories/DebtType/debt-type.repository';
import DebtRepository from '../repositories/Debt/debt.repository';
import VoucherTypeRepository from '../repositories/VoucherType/voucher-type.repository';
import PersonGroupTypeRepository from '../repositories/PersonGroupType/person-group-type.repository';
import VoucherRepository from '../repositories/Voucher/voucher.repository';
import { generateRVNCode } from '../../utils';

class ReturnedPurchaseOrderController implements BaseController {
  returnedPurchaseOrderRepository: ReturnedPurchaseOrderRepository;
  constructor() {
    this.returnedPurchaseOrderRepository = new ReturnedPurchaseOrderRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const returnedPurchaseOrders = await this.returnedPurchaseOrderRepository.findByCriteria(filters);
      return new SuccessResponse(res, returnedPurchaseOrders);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const returnedPurchaseOrderId: number = parseInt(req.params.id as string);
      const returnedPurchaseOrder = await this.returnedPurchaseOrderRepository.findByIdOrFailByCriteria(
        returnedPurchaseOrderId,
        filters,
      );
      return new SuccessResponse(res, returnedPurchaseOrder);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const returnedPurchaseOrderInput = pick(
          [...ReturnedPurchaseOrderAttributes, 'productItems'],
          req.body as unknown as ReturnedPurchaseOrderInput & {
            productItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
          },
        ) as ReturnedPurchaseOrderInput & {
          productItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
        };
        let purchaseOrder: PurchaseOrder | null = null;
        if (returnedPurchaseOrderInput.purchaseOrderId) {
          const purchaseOrderRepository = new PurchaseOrderRepository();
          purchaseOrder = await purchaseOrderRepository.findByIdOrFail(returnedPurchaseOrderInput.purchaseOrderId);
          if (purchaseOrder.importStatusId) {
            const statusRepository = new StatusRepository();
            const status = await statusRepository.findById(purchaseOrder.importStatusId);
            if (status?.key !== STATUSES.imported) {
              throw new InternalServerError('Please import the product items before returning purchase order !');
            }
          }
        }
        if (
          Number(returnedPurchaseOrderInput.receivedRefundAmount) > Number(returnedPurchaseOrderInput.refundPriceTotal)
        ) {
          throw new InternalServerError(
            'Received Refund Amount is not allowed greater than refund price total amount !',
          );
        }
        const returnedPurchaseOrder = await this.returnedPurchaseOrderRepository.create(returnedPurchaseOrderInput);
        let createdReturnedPurchaseOrderProductItems: ReturnedPurchaseOrderProductItem[] = [];
        if (returnedPurchaseOrderInput?.productItems && returnedPurchaseOrderInput?.productItems.length > 0) {
          // Create product items in purchase order
          const returnedPurchaseOrderProductItemRepository = new ReturnedPurchaseOrderProductItemRepository();
          const returnedPurchaseOrderProductItems = returnedPurchaseOrderInput.productItems.map(
            (productItem: { id: number; quantity: number; price: number; discount: number; totalPrice: number }) => ({
              returnedPurchaseOrderId: returnedPurchaseOrder.id,
              productId: productItem.id,
              returnedQuantity: productItem.quantity,
              price: productItem.price,
              discount: productItem.discount,
              totalPrice: productItem.totalPrice,
            }),
          );
          const newReturnedPurchaseOrderProductItems = await returnedPurchaseOrderProductItemRepository.bulkCreate(
            returnedPurchaseOrderProductItems,
          );
          createdReturnedPurchaseOrderProductItems = [
            ...createdReturnedPurchaseOrderProductItems,
            ...newReturnedPurchaseOrderProductItems,
          ];

          // Update product quantity if the returned status is "returned-product" in returned purchase order
          if (returnedPurchaseOrder.returnedStatusId && createdReturnedPurchaseOrderProductItems.length > 0) {
            const statusRepository = new StatusRepository();
            const status = await statusRepository.findById(returnedPurchaseOrder.returnedStatusId);
            if (status?.key === STATUSES.returnedproduct) {
              const productRepository = new ProductRepository();
              for (const returnedProductItem of createdReturnedPurchaseOrderProductItems) {
                const product = await productRepository.findById(returnedProductItem.productId);
                if (product && Number(product.inventoryQuantity) < Number(returnedProductItem.returnedQuantity)) {
                  throw new InternalServerError(
                    'The inventory quantity of the product is not allowed to be less than the returned quantity of the returned product item!',
                  );
                }
                if (product) {
                  await product.update({
                    inventoryQuantity: product.inventoryQuantity - returnedProductItem.returnedQuantity,
                  });
                }
              }
            }
          }
        }
        const debtTypeRepository = new DebtTypeRepository();
        const supplierDebtType = await debtTypeRepository.findOne({
          where: {
            key: DEBT_TYPES.supplierDebt,
          },
        });
        if (returnedPurchaseOrder && purchaseOrder) {
          // Create debt amount for supplier with returned purchase order
          const debtRepository = new DebtRepository();
          const currentDateTime: Date = new Date();
          await debtRepository.create({
            supplierId: purchaseOrder.supplierId,
            staffId: purchaseOrder.staffId,
            purchaseOrderId: purchaseOrder.id,
            voucherId: null,
            recordedDate: purchaseOrder.importDate ?? currentDateTime,
            debtAmount: Number(purchaseOrder.debtAmount) - Number(returnedPurchaseOrder.receivedRefundAmount),
            debtTypeId: supplierDebtType?.id,
            returnedPurchaseOrderId: returnedPurchaseOrder.id,
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
            key: PERSON_GROUP_TYPES.supplier,
          },
        });
        const voucherRepository = new VoucherRepository();
        const newReceiptVoucher = await voucherRepository.create({
          voucherTypeId: receiptVoucherType?.id,
          code: generateRVNCode(),
          value: Number(returnedPurchaseOrder.receivedRefundAmount),
          description: '',
          recordedDate: returnedPurchaseOrder.createdAt,
          voucherGroupId: null,
          customerId: null,
          supplierId: purchaseOrder?.supplierId,
          staffId: null,
          personGroupTypeId: personGroupType?.id,
          paymentMethodId: returnedPurchaseOrder.paymentMethodId,
        });
        if (newReceiptVoucher && returnedPurchaseOrder && purchaseOrder) {
          // Create debt amount for supplier with receipt voucher
          const debtRepository = new DebtRepository();
          const debtTypeRepository = new DebtTypeRepository();
          const supplierDebtType = await debtTypeRepository.findOne({
            where: {
              key: DEBT_TYPES.supplierDebt,
            },
          });
          const currentDateTime: Date = new Date();
          await debtRepository.create({
            supplierId: newReceiptVoucher.supplierId,
            staffId: newReceiptVoucher.staffId,
            purchaseOrderId: null,
            voucherId: newReceiptVoucher.id,
            recordedDate: newReceiptVoucher.createdAt ?? currentDateTime,
            debtAmount:
              Number(purchaseOrder.debtAmount) -
              Number(returnedPurchaseOrder.receivedRefundAmount) +
              Number(newReceiptVoucher.value),
            debtTypeId: supplierDebtType?.id,
          });
        }
        return new SuccessResponse(
          res,
          { returnedPurchaseOrder, productItems: createdReturnedPurchaseOrderProductItems },
          201,
        );
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
    throw new Error('Method not implemented.');
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
}
export default ReturnedPurchaseOrderController;
