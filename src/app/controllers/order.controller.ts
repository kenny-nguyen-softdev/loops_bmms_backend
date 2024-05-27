/* eslint-disable no-unused-vars */
import { OrderAttributes, OrderInput, OrderItem, ProductUnit, Specification } from '../../models';
import { BaseController } from '../core/controllers/BaseController';
import sequelizeConnection from '../core/db/connection';
import {
  ErrorResponse,
  IErrorResponse,
  ISuccessResponse,
  NotFoundError,
  SuccessResponse,
  InternalServerError,
} from '../core/response/BaseResponse';
import { pick } from '../core/utils';
import { IRequest, IResponse } from '../core/vendors';
import OrderRepository from '../repositories/Order/order.repository';
import { generateONCode, generateRVNCode } from '../../utils';
import OrderItemRepository from '../repositories/OrderItem/order-item.repository';
import StatusRepository from '../repositories/Status/status.repository';
import ProductRepository from '../repositories/Product/product.repository';
import ComboRepository from '../repositories/Combo/combo.repository';
import DeliveryMethodRepository from '../repositories/DeliveryMethod/delivery-method.repository';
import { STATUSES, DELIVERY_METHODS, DEBT_TYPES, PERSON_GROUP_TYPES, VOUCHER_TYPES } from '../../constant';
import DebtTypeRepository from '../repositories/DebtType/debt-type.repository';
import DebtRepository from '../repositories/Debt/debt.repository';
import SpecificationRepository from '../repositories/Specification/specification.repository';
import OrderPaymentRepository from '../repositories/OrderPayment/order-payment.repository';
import VoucherRepository from '../repositories/Voucher/voucher.repository';
import VoucherTypeRepository from '../repositories/VoucherType/voucher-type.repository';
import PersonGroupTypeRepository from '../repositories/PersonGroupType/person-group-type.repository';

type SpecificationType = {
  specificationTypeId: number;
  sizeUnitId: number;
  productId: number;
  value: number;
  groupId: number;
};

class OrderController implements BaseController {
  orderRepository: OrderRepository;
  specificationRepository: SpecificationRepository;
  orderPaymentRepository: OrderPaymentRepository;
  voucherRepository: VoucherRepository;
  voucherTypeRepository: VoucherTypeRepository;
  personGroupTypeRepository: PersonGroupTypeRepository;
  constructor() {
    this.orderRepository = new OrderRepository();
    this.specificationRepository = new SpecificationRepository();
    this.orderPaymentRepository = new OrderPaymentRepository();
    this.voucherRepository = new VoucherRepository();
    this.voucherTypeRepository = new VoucherTypeRepository();
    this.personGroupTypeRepository = new PersonGroupTypeRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const orders = await this.orderRepository.findByCriteria(filters);
      return new SuccessResponse(res, orders);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const orderId: number = parseInt(req.params.id as string);
      const order = await this.orderRepository.findByIdOrFailByCriteria(orderId, filters);
      return new SuccessResponse(res, order);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const orderInput = pick(
          [...OrderAttributes, 'productItems', 'serviceItems', 'comboItems', 'specificationItems', 'customerPays', 'customerPaysDate'],
          req.body as unknown as OrderInput & {
            productItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number, selectedProductUnit?: ProductUnit, orderDescription: string }[];
            serviceItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number, orderDescription: string }[];
            comboItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number, orderDescription: string }[];
            specificationItems?: {
              specificationTypeId: number;
              orderId: number;
              sizeUnitId: number;
              productId: number;
              value: number;
              groupId: number;
            }[];
            customerPays: number;
            customerPaysDate: Date;
          },
        ) as OrderInput & {
          productItems?: {
            id: number;
            quantity: number;
            price: number;
            discount: number;
            totalPrice: number;
            selectedProductUnit?: ProductUnit;
            orderDescription: string
          }[];
          serviceItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number, orderDescription: string }[];
          comboItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number, orderDescription: string }[];
          specificationItems?: {
            specificationTypeId: number;
            orderId: number;
            sizeUnitId: number;
            productId: number;
            value: number;
            groupId: number;
          }[];
          customerPays: number;
          customerPaysDate: Date;
        };
        console.log(orderInput);
        // Create order
        orderInput.code = generateONCode();
        const order = await this.orderRepository.create(orderInput);
        let createdOrderItems: OrderItem[] = [];
        const orderItemRepository = new OrderItemRepository();
        if (orderInput?.productItems && orderInput?.productItems.length > 0) {
          const orderItems = orderInput.productItems.map(
            (productItem: {
              id: number;
              quantity: number;
              price: number;
              discount: number;
              totalPrice: number;
              selectedProductUnit?: ProductUnit;
              orderDescription: string;
            }) => {
              return {
                orderId: order.id,
                productId: productItem.id,
                quantity: productItem.quantity,
                price: productItem.selectedProductUnit?.id ? productItem.selectedProductUnit.salePrice : productItem.price,
                discount: productItem.discount,
                totalPrice: productItem.totalPrice,
                description: productItem.orderDescription,
                productUnitId: productItem.selectedProductUnit?.id || null,
              };
            },
          );
          const newOrderItems = await orderItemRepository.bulkCreate(orderItems);
          // const newOrderItems = await orderItemRepository.bulkCreate(orderItems);
          createdOrderItems = [...createdOrderItems, ...newOrderItems];
        }
        if (orderInput?.serviceItems && orderInput?.serviceItems.length > 0) {
          const orderItems = orderInput.serviceItems.map(
            (serviceItem: { id: number; quantity: number; price: number; discount: number; totalPrice: number; orderDescription: string }) => ({
              orderId: order.id,
              serviceId: serviceItem.id,
              quantity: serviceItem.quantity,
              price: serviceItem.price,
              discount: serviceItem.discount,
              totalPrice: serviceItem.totalPrice,
              description: serviceItem.orderDescription,
            }),
          );
          const newOrderItems = await orderItemRepository.bulkCreate(orderItems);
          createdOrderItems = [...createdOrderItems, ...newOrderItems];
        }
        if (orderInput?.comboItems && orderInput?.comboItems.length > 0) {
          const orderItems = orderInput.comboItems.map(
            (comboItem: { id: number; quantity: number; price: number; discount: number; totalPrice: number; orderDescription: string }) => ({
              orderId: order.id,
              comboId: comboItem.id,
              quantity: comboItem.quantity,
              price: comboItem.price,
              discount: comboItem.discount,
              totalPrice: comboItem.totalPrice,
              description: comboItem.orderDescription,
            }),
          );
          const newOrderItems = await orderItemRepository.bulkCreate(orderItems);
          createdOrderItems = [...createdOrderItems, ...newOrderItems];
        }
        const debtTypeRepository = new DebtTypeRepository();
        const customerDebtType = await debtTypeRepository.findOne({
          where: {
            key: DEBT_TYPES.customerDebt,
          },
        });
        if (order) {
          // Create debt amount for customer
          const debtRepository = new DebtRepository();
          const currentDateTime: Date = new Date();
          await debtRepository.create({
            customerId: order.customerId,
            staffId: order.staffId,
            orderId: order.id,
            voucherId: null,
            recordedDate: order.createdAt ?? currentDateTime,
            debtAmount: order.debtAmount,
            debtTypeId: customerDebtType?.id,
          });
        }
        if(orderInput?.specificationItems && orderInput?.specificationItems.length > 0) {
          const specificationItems = orderInput.specificationItems.map(
            (specificationItem: { specificationTypeId: number; sizeUnitId: number; productId: number; value: number; groupId: number }) => ({
              orderId: order.id,
              specificationTypeId: specificationItem.specificationTypeId,
              sizeUnitId: specificationItem.sizeUnitId,
              productId: specificationItem.productId,
              value: specificationItem.value,
              groupId: specificationItem.groupId,
            }),
          );
          await this.specificationRepository.bulkCreate(specificationItems);
        }
        if(orderInput?.customerPays > 0){
          const orderPayment = await this.orderPaymentRepository.create({
            orderId: order.id,
            paymentMethodId: Number(orderInput.paymentMethodId),
            amount: orderInput.customerPays,
            paidDate: orderInput.customerPaysDate,
          });
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
            await this.orderRepository.update(orderPayment.orderId, {
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
        const receiptVoucherType = await this.voucherTypeRepository.findOne({
          where: {
            key: VOUCHER_TYPES.receiptVoucher,
          },
        });
        const personGroupType = await this.personGroupTypeRepository.findOne({
          where: {
            key: PERSON_GROUP_TYPES.customer,
          },
        });
        const newReceiptVoucher = await this.voucherRepository.create({
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
        }
        return new SuccessResponse(res, { order, orderItems: createdOrderItems }, 201);
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const orderId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const order = await this.orderRepository.findByIdOrFail(orderId);
      const orderInput = pick(OrderAttributes, req.body as unknown as OrderInput) as OrderInput;
      const updatedOrder = await this.orderRepository.update(orderId, orderInput);
      return new SuccessResponse(res, updatedOrder);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const orderId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const order = await this.orderRepository.findByIdOrFail(orderId);
      const result = await this.orderRepository.deleteById(orderId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async approveOrder(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const orderId: number = parseInt(req.params.id as string);
        // eslint-disable-next-line no-unused-vars
        const order = await this.orderRepository.findByIdOrFail(orderId);
        if (order.orderStatusId) {
          const statusRepository = new StatusRepository();
          const status = await statusRepository.findById(order.orderStatusId);
          if (status?.key === STATUSES.ordered) {
            const approvedStatus = await statusRepository.findOneOrFail({
              where: {
                key: STATUSES.approvedOrder,
              },
            });
            const orderProcessingStatus = await statusRepository.findOneOrFail({
              where: {
                key: STATUSES.orderProcessing,
              },
            });
            await order.update({
              ...order,
              orderStatusId: orderProcessingStatus.id,
              approvedStatusId: approvedStatus.id,
            });
          } else {
            throw new InternalServerError('The order status need to be "ordered" status in order to approve order');
          }
        }
        return new SuccessResponse(res, order);
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
  async exportingInventory(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const orderId: number = parseInt(req.params.id as string);
        // eslint-disable-next-line no-unused-vars
        const order = await this.orderRepository.findByIdOrFail(orderId, {
          include: [
            {
              model: OrderItem,
              as: 'orderItems',
            },
          ],
        });
        if (order?.orderStatusId && order?.approvedStatusId) {
          const statusRepository = new StatusRepository();
          const approveStatus = await statusRepository.findById(order.approvedStatusId);
          if (approveStatus?.key === STATUSES.approvedOrder) {
            if (order?.orderItems && order?.orderItems.length > 0) {
              const productRepository = new ProductRepository();
              const comboRepository = new ComboRepository();
              const products = await productRepository.find();
              const combos = await comboRepository.find();
              for (const orderItem of order.orderItems) {
                if (orderItem.productId !== null) {
                  const product = products.find((product) => product.id === orderItem.productId);
                  if (product) {
                    if (product.inventoryQuantity <= 0) {
                      throw new InternalServerError('Out of stock in inventory');
                    }
                    if (product.inventoryQuantity < orderItem.quantity) {
                      throw new InternalServerError(
                        `The inventoryQuantity in stock of the product with id ${orderItem.productId} must be greater than or equal to the quantity to be released`,
                      );
                    } else {
                      await productRepository.update(product.id, {
                        ...product,
                        inventoryQuantity: Number(product.inventoryQuantity) - Number(orderItem.quantity),
                      });
                    }
                  }
                }
                if (orderItem.comboId !== null) {
                  const combo = combos.find((combo) => combo.id === orderItem.comboId);
                  if (combo && combo?.comboItems && combo?.comboItems.length > 0) {
                    for (const comboItem of combo.comboItems) {
                      if (comboItem.productId !== null) {
                        const product = products.find((product) => product.id === comboItem.productId);
                        if (product) {
                          if (product.inventoryQuantity <= 0) {
                            throw new InternalServerError('Out of stock in inventory');
                          }
                          if (product.inventoryQuantity < comboItem.quantity) {
                            throw new InternalServerError(
                              `The inventoryQuantity in stock of the product with id ${orderItem.productId} inside combo id ${orderItem.comboId} must be greater than or equal to the quantity to be released`,
                            );
                          } else {
                            await productRepository.update(product.id, {
                              ...product,
                              inventoryQuantity: Number(product.inventoryQuantity) - Number(comboItem.quantity),
                            });
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
            if (order?.deliveryMethodId) {
              const statusRepository = new StatusRepository();
              const statuses = await statusRepository.find();
              const orderProcessingStatus = statuses.find((status) => status.key === STATUSES.orderProcessing);
              const orderCompletedStatus = statuses.find((status) => status.key === STATUSES.orderCompleted);
              const shippingStatus = statuses.find((status) => status.key === STATUSES.shipping);
              const shippedStatus = statuses.find((status) => status.key === STATUSES.shipped);
              const orderFullPaidStatus = statuses.find((status) => status.key === STATUSES.orderFullPaid);
              const fullyExportedStatus = statuses.find((status) => status.key === STATUSES.fullyExported);
              const deliveryMethodRepository = new DeliveryMethodRepository();
              const deliveryMethod = await deliveryMethodRepository.findByIdOrFail(order.deliveryMethodId);
              await order.update({
                ...order,
                ...(deliveryMethod.key === DELIVERY_METHODS.receiveInStore
                  ? {
                      orderStatusId:
                        order.shippingStatusId !== shippedStatus?.id &&
                        order.paymentStatusId === orderFullPaidStatus?.id &&
                        order.debtAmount <= 0
                          ? orderCompletedStatus?.id
                          : orderProcessingStatus?.id,
                    }
                  : {}),
                exportedInventoryStatusId: fullyExportedStatus?.id,
                ...(deliveryMethod.key === DELIVERY_METHODS.shipping ? { shippingStatusId: shippingStatus?.id } : {}),
              });
            }
          } else {
            throw new InternalServerError(
              'The order status need to be "approvedOrder" status in order to exporting orderItems from stock',
            );
          }
        }
        return new SuccessResponse(res, order);
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
  async updateShipping(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const orderId: number = parseInt(req.params.id as string);
        const order = await this.orderRepository.findByIdOrFail(orderId, {
          include: [
            {
              model: OrderItem,
              as: 'orderItems',
            },
          ],
        });
        if (order.exportedInventoryStatusId && order.shippingStatusId) {
          const statusRepository = new StatusRepository();
          const exportedInventoryStatus = await statusRepository.findById(order.exportedInventoryStatusId);
          const shippingStatus = await statusRepository.findById(order.shippingStatusId);
          if (exportedInventoryStatus?.key === STATUSES.fullyExported && shippingStatus?.key === STATUSES.shipping) {
            if (order?.deliveryMethodId) {
              const statusRepository = new StatusRepository();
              const statuses = await statusRepository.find();
              const orderProcessingStatus = statuses.find((status) => status.key === STATUSES.orderProcessing);
              const orderCompletedStatus = statuses.find((status) => status.key === STATUSES.orderCompleted);
              const orderFullPaidStatus = statuses.find((status) => status.key === STATUSES.orderFullPaid);
              const shippedStatus = statuses.find((status) => status.key === STATUSES.shipped);
              const deliveryMethodRepository = new DeliveryMethodRepository();
              const deliveryMethod = await deliveryMethodRepository.findByIdOrFail(order.deliveryMethodId);
              await order.update({
                ...order,
                ...(deliveryMethod.key === DELIVERY_METHODS.shipping
                  ? {
                      orderStatusId:
                        order.paymentStatusId === orderFullPaidStatus?.id && order.debtAmount <= 0
                          ? orderCompletedStatus?.id
                          : orderProcessingStatus?.id,
                    }
                  : {}),
                ...(deliveryMethod.key === DELIVERY_METHODS.shipping ? { shippingStatusId: shippedStatus?.id } : {}),
              });
            }
          } else {
            throw new InternalServerError(
              'The order status need to be "fullyExported" and "shipping" status in order to update shipping status',
            );
          }
        }
        return new SuccessResponse(res, order);
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

  async cancelOrder(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const orderId: number = parseInt(req.params.id as string);
      const order = await this.orderRepository.findByIdOrFail(orderId);
      if(order.orderStatusId) {
        const statusRepository = new StatusRepository();
        const statuses = await statusRepository.find();
        const orderCanceledStatus = statuses.find((status) => status.key === STATUSES.orderCanceled);
        await order.update({
          ...order,
          orderStatusId: orderCanceledStatus?.id,
        });
      }
      return new SuccessResponse(res, order);
    } catch (error) {
      return new ErrorResponse(
        res,
        (error as Error).message,
        null,
        (error as NotFoundError | InternalServerError).statusCode,
      );
    }
  }
}
export default OrderController;
