/* eslint-disable no-unused-vars */
import { PurchaseOrderAttributes, PurchaseOrderInput, PurchaseOrderProductItem } from '../../models';
import { BaseController } from '../core/controllers/BaseController';
import sequelizeConnection from '../core/db/connection';
import {
  ErrorResponse,
  IErrorResponse,
  ISuccessResponse,
  NotFoundError,
  SuccessResponse,
} from '../core/response/BaseResponse';
import { pick } from '../core/utils';
import { IRequest, IResponse } from '../core/vendors';
import PurchaseOrderRepository from '../repositories/PurchaseOrder/purchase-order.repository';
import PurchaseOrderProductItemRepository from '../repositories/PurchaseOrderProductItem/purchase-order-product-item.repository';
import DebtTypeRepository from '../repositories/DebtType/debt-type.repository';
import { DEBT_TYPES, STATUSES } from '../../constant';
import DebtRepository from '../repositories/Debt/debt.repository';
import { generatePONCode } from '../../utils';
import StatusRepository from '../repositories/Status/status.repository';
import ProductRepository from '../repositories/Product/product.repository';
import OrderSupplierRepository from '../repositories/OrderSupplier/order-supplier.repository';

class PurchaseOrderController implements BaseController {
  purchaseOrderRepository: PurchaseOrderRepository;
  constructor() {
    this.purchaseOrderRepository = new PurchaseOrderRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const purchaseOrders = await this.purchaseOrderRepository.findByCriteria(filters);
      return new SuccessResponse(res, purchaseOrders);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const purchaseOrderId: number = parseInt(req.params.id as string);
      const purchaseOrder = await this.purchaseOrderRepository.findByIdOrFailByCriteria(purchaseOrderId, filters);
      return new SuccessResponse(res, purchaseOrder);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const purchaseOrderInput = pick(
          [...PurchaseOrderAttributes, 'productItems'],
          req.body as unknown as PurchaseOrderInput & {
            productItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
          },
        ) as PurchaseOrderInput & {
          productItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
        };
        // Create purchase order
        purchaseOrderInput.code = generatePONCode();
        const purchaseOrder = await this.purchaseOrderRepository.create(purchaseOrderInput);
        let createdPurchaseOrderProductItems: PurchaseOrderProductItem[] = [];
        if (purchaseOrderInput?.productItems && purchaseOrderInput?.productItems.length > 0) {
          // Create product items in purchase order
          const purchaseOrderProductItemRepository = new PurchaseOrderProductItemRepository();
          const purchaseOrderProductItems = purchaseOrderInput.productItems.map(
            (productItem: { id: number; quantity: number; price: number; discount: number; totalPrice: number }) => ({
              purchaseOrderId: purchaseOrder.id,
              productId: productItem.id,
              quantity: productItem.quantity,
              price: productItem.price,
              discount: productItem.discount,
              totalPrice: productItem.totalPrice,
            }),
          );
          const newPurchaseOrderProductItems = await purchaseOrderProductItemRepository.bulkCreate(
            purchaseOrderProductItems,
          );
          createdPurchaseOrderProductItems = [...createdPurchaseOrderProductItems, ...newPurchaseOrderProductItems];

          // Update product quantity if the import status is "imported" in purchase order
          if (purchaseOrder.importStatusId && createdPurchaseOrderProductItems.length > 0) {
            const statusRepository = new StatusRepository();
            const status = await statusRepository.findById(purchaseOrder.importStatusId);
            if (status?.key === STATUSES.imported) {
              const productRepository = new ProductRepository();
              createdPurchaseOrderProductItems.forEach(async (productItem: PurchaseOrderProductItem) => {
                const product = await productRepository.findById(productItem.productId);
                return (
                  product &&
                  (await product.update({
                    inventoryQuantity: product.inventoryQuantity + productItem.quantity,
                  }))
                );
              });
            }
          }
        }
        const debtTypeRepository = new DebtTypeRepository();
        const supplierDebtType = await debtTypeRepository.findOne({
          where: {
            key: DEBT_TYPES.supplierDebt,
          },
        });
        if (purchaseOrder) {
          // Create debt amount for supplier
          const debtRepository = new DebtRepository();
          const currentDateTime: Date = new Date();
          await debtRepository.create({
            supplierId: purchaseOrder.supplierId,
            staffId: purchaseOrder.staffId,
            purchaseOrderId: purchaseOrder.id,
            voucherId: null,
            recordedDate: purchaseOrder.importDate ?? currentDateTime,
            debtAmount: purchaseOrder.debtAmount,
            debtTypeId: supplierDebtType?.id,
          });
        }
        return new SuccessResponse(res, { purchaseOrder, productItems: createdPurchaseOrderProductItems }, 201);
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const purchaseOrderId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const purchaseOrder = await this.purchaseOrderRepository.findByIdOrFail(purchaseOrderId);
      const purchaseOrderInput = pick(
        PurchaseOrderAttributes,
        req.body as unknown as PurchaseOrderInput,
      ) as PurchaseOrderInput;
      const updatedPurchaseOrder = await this.purchaseOrderRepository.update(purchaseOrderId, purchaseOrderInput);
      return new SuccessResponse(res, updatedPurchaseOrder);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const purchaseOrderId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const purchaseOrder = await this.purchaseOrderRepository.findByIdOrFail(purchaseOrderId);
      const result = await this.purchaseOrderRepository.deleteById(purchaseOrderId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async updatePurchaseOrderImportStatus(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const query = req.query as unknown as { order_supplier_id: number };
        const purchaseOrderId: number = parseInt(req.params.id as string);
        const purchaseOrderInput = pick(['statusId'], req.body as unknown as { statusId: number }) as {
          statusId: number;
        };
        if (query?.order_supplier_id) { // Import products from a purchase order which is created from order supplier
          const orderSupplierRepo = new OrderSupplierRepository();
          const orderSupplier = await orderSupplierRepo.findByIdOrFail(query.order_supplier_id);
          await orderSupplier.update({
            ...orderSupplier,
            importStatusId: purchaseOrderInput.statusId,
            importDate: new Date(),
          });
          const purchaseOrder = await this.purchaseOrderRepository.findByIdOrFail(purchaseOrderId);
          await this.purchaseOrderRepository.update(purchaseOrderId, {
            ...purchaseOrder,
            importStatusId: purchaseOrderInput.statusId,
            importDate: new Date(),
            orderSupplierId: orderSupplier.id
          });
          return new SuccessResponse(res, orderSupplier);
        } else { // Import products from a normal purchase order
          const purchaseOrder = await this.purchaseOrderRepository.findByIdOrFail(purchaseOrderId);
          const updatedPurchaseOrder = await this.purchaseOrderRepository.update(purchaseOrderId, {
            ...purchaseOrder,
            importStatusId: purchaseOrderInput.statusId,
            importDate: new Date(),
          });
          return new SuccessResponse(res, updatedPurchaseOrder);
        }
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default PurchaseOrderController;
