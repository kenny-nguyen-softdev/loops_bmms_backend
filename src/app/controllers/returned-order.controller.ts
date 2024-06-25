import {
  Order,
  ReturnedOrderAttributes,
  ReturnedOrderInput,
  ReturnedOrderItem,
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
import ReturnedOrderRepository from '../repositories/ReturnedOrder/returned-order.repository';
import ReturnedOrderItemRepository from '../repositories/ReturnedOrderItem/returned-order-item.repository';
import OrderRepository from '../repositories/Order/order.repository';
import { PERSON_GROUP_TYPES, STATUSES, VOUCHER_TYPES } from '../../constant';
import StatusRepository from '../repositories/Status/status.repository';
import ProductRepository from '../repositories/Product/product.repository';
import VoucherTypeRepository from '../repositories/VoucherType/voucher-type.repository';
import PersonGroupTypeRepository from '../repositories/PersonGroupType/person-group-type.repository';
import VoucherRepository from '../repositories/Voucher/voucher.repository';
import { generateRVNCode } from '../../utils';

class ReturnedOrderController implements BaseController {
  returnedOrderRepository: ReturnedOrderRepository;
  constructor() {
    this.returnedOrderRepository = new ReturnedOrderRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const returnedOrders = await this.returnedOrderRepository.findByCriteria(filters);
      return new SuccessResponse(res, returnedOrders);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const returnedOrderId: number = parseInt(req.params.id as string);
      const returnedOrder = await this.returnedOrderRepository.findByIdOrFailByCriteria(
        returnedOrderId,
        filters,
      );
      return new SuccessResponse(res, returnedOrder);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const returnedOrderInput = pick(
          [...ReturnedOrderAttributes, 'productItems'],
          req.body as unknown as ReturnedOrderInput & {
            productItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
            // serviceItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
            // comboItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
          },
        ) as ReturnedOrderInput & {
          productItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
          // serviceItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
          // comboItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
        };
        let order: Order | null = null;
        if (returnedOrderInput.orderId) {
          const orderRepository = new OrderRepository();
          order = await orderRepository.findByIdOrFail(returnedOrderInput.orderId);
          if (order.exportedInventoryStatusId) {
            const statusRepository = new StatusRepository();
            const status = await statusRepository.findById(order.exportedInventoryStatusId);
            if (status?.key !== STATUSES.fullyExported) {
              throw new InternalServerError('Please export the product items before returning order !');
            }
          }
        }
        if (
          Number(returnedOrderInput.receivedRefundAmount) > Number(returnedOrderInput.refundPriceTotal)
        ) {
          throw new InternalServerError(
            'Received Refund Amount is not allowed greater than refund price total amount !',
          );
        }
        const returnedOrder = await this.returnedOrderRepository.create(returnedOrderInput);
        let createdReturnedOrderItems: ReturnedOrderItem[] = [];
        if (returnedOrderInput?.productItems && returnedOrderInput?.productItems.length > 0) {
          // Create product items in purchase order
          const returnedOrderItemRepository = new ReturnedOrderItemRepository();
          const returnedOrderItems = returnedOrderInput.productItems.map(
            (productItem: { id: number; quantity: number; price: number; discount: number; totalPrice: number }) => ({
              returnedOrderId: returnedOrder.id,
              productId: productItem.id,
              quantity: productItem.quantity,
              price: productItem.price,
              discount: productItem.discount,
              totalPrice: productItem.totalPrice,
            }),
          );
          const newReturnedOrderItems = await returnedOrderItemRepository.bulkCreate(
            returnedOrderItems,
          );
          createdReturnedOrderItems = [
            ...createdReturnedOrderItems,
            ...newReturnedOrderItems,
          ];

          // Update product quantity if the returned status is "returned-product" in returned order
          if (returnedOrder.returnedOrderStatusId && createdReturnedOrderItems.length > 0) {
            const statusRepository = new StatusRepository();
            const status = await statusRepository.findById(returnedOrder.returnedOrderStatusId);
            if (status?.key === STATUSES.returnedproduct) {
              const productRepository = new ProductRepository();
              for (const returnedProductItem of createdReturnedOrderItems) {
                const product = await productRepository.findById(returnedProductItem.productId);
                // if (product && Number(product.inventoryQuantity) < Number(returnedProductItem.quantity)) {
                //   throw new InternalServerError(
                //     'The inventory quantity of the product is not allowed to be less than the returned quantity of the returned product item!',
                //   );
                // }
                if (product) {
                  await product.update({
                    inventoryQuantity: Number(product.inventoryQuantity) + Number(returnedProductItem.quantity),
                  });
                }
              }
            }
          }
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
            key: PERSON_GROUP_TYPES.customer,
          },
        });
        const voucherRepository = new VoucherRepository();
        await voucherRepository.create({
          voucherTypeId: paymentVoucherType?.id,
          code: generateRVNCode(),
          value: Number(returnedOrder.receivedRefundAmount),
          description: '',
          recordedDate: returnedOrder.createdAt,
          voucherGroupId: null,
          customerId: order?.customerId,
          supplierId: null,
          staffId: null,
          personGroupTypeId: personGroupType?.id,
          paymentMethodId: returnedOrder.paymentMethodId,
        });
        return new SuccessResponse(
          res,
          { returnedOrder, productItems: createdReturnedOrderItems },
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
export default ReturnedOrderController;
