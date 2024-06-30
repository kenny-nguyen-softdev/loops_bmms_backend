import { FindOptions, Op } from 'sequelize';
import { DEBT_TYPES, PAYMENT_METHODS, STATUSES, VOUCHER_TYPES } from '../../constant';
import { ISuccessResponse, IErrorResponse, SuccessResponse, ErrorResponse } from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import VoucherTypeRepository from '../repositories/VoucherType/voucher-type.repository';
import ProductRepository from '../repositories/Product/product.repository';
import PurchaseOrderProductItemRepository from '../repositories/PurchaseOrderProductItem/purchase-order-product-item.repository';
import StatusRepository from '../repositories/Status/status.repository';
import PurchaseOrderRepository from '../repositories/PurchaseOrder/purchase-order.repository';
import OrderRepository from '../repositories/Order/order.repository';
import { generateDateRange, generateMonthRange } from '../../utils/date-handler.util';
import PaymentMethodRepository from '../repositories/PaymentMethod/payment-method.repository';
import {
  Customer,
  District,
  OrderItem,
  PaymentMethod,
  Product,
  Province,
  PurchaseOrder,
  ReturnedOrder,
  Status,
  Supplier,
  Tax,
  User,
  Voucher,
  VoucherType,
  Ward,
} from '../../models';
import PurchaseOrderPaymentRepository from '../repositories/PurchaseOrderPayment/purchase-order-payment.repository';
import OrderPaymentRepository from '../repositories/OrderPayment/order-payment.repository';
import DebtRepository from '../repositories/Debt/debt.repository';
import DebtTypeRepository from '../repositories/DebtType/debt-type.repository';
import ReturnedOrderItemRepository from '../repositories/ReturnedOrderItem/returned-order-item.repository';
import OrderItemRepository from '../repositories/OrderItem/order-item.repository';
import VoucherRepository from '../repositories/Voucher/voucher.repository';

class StatisticController {
  async revenueReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    // Sửa lại doanh thu: tính tổng doanh thu toàn bộ đơn không tính nợ, VAT,...
    const startDate = new Date(req.body.startDate).toLocaleDateString();
    const endDate = new Date(req.body.endDate).toLocaleDateString();
    try {
      const statusRepo = new StatusRepository();
      // const fullExportStatus = await statusRepo.findOne({ where: { key: STATUSES.fullyExported } });
      // const processOrderStatus = await statusRepo.findOne({ where: { key: STATUSES.orderProcessing } });
      // const completedOrderStatus = await statusRepo.findOne({ where: { key: STATUSES.orderCompleted } });
      const approvedStatus = await statusRepo.findOne({ where: { key: STATUSES.approvedOrder } });
      const orders = await new OrderRepository().find({
        where: {
          // orderStatusId: {
          //   [Op.or]: [completedOrderStatus?.id, processOrderStatus?.id],
          // },
          // exportedInventoryStatusId: fullExportStatus?.id,
          approvedStatusId: approvedStatus?.id,
        },
      });

      const revenueByDate: { [date: string]: number } = generateDateRange(startDate, endDate);
      orders.forEach((order) => {
        const orderDate =
          (order.createdAt.getMonth() + 1).toString().padStart(2, '0') +
          '/' +
          order.createdAt.getDate().toString().padStart(2, '0') +
          '/' +
          order.createdAt.getFullYear();
        if (revenueByDate[orderDate] >= 0) {
          revenueByDate[orderDate] += Number(order.totalPrice);
        }
      });
      return new SuccessResponse(res, revenueByDate);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async shippingReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return new SuccessResponse(res, 'shippingReport');
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async returningReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return new SuccessResponse(res, 'returningReport');
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async orderPaymentReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const startDate = req.body.startDate;
      const endDate = req.body.endDate + ' 23:59:59';

      const castPaymentMethodId = (
        await new PaymentMethodRepository().findOne({
          where: {
            key: PAYMENT_METHODS.cash,
          },
        })
      )?.id;

      // let whereOptions = {};
      // if (castPaymentMethodId) {
      //   whereOptions = {
      //     ...whereOptions,
      //     paymentMethodId: castPaymentMethodId,
      //   };
      // }
      const orderPayments = await new OrderPaymentRepository().find({
        order: [['paidDate', 'ASC']],
        where: {
          [Op.and]: [{ paidDate: { [Op.gte]: startDate } }, { paidDate: { [Op.lte]: endDate } }],
        },
      });
      const dates: { [date: string]: number } = generateDateRange(startDate, endDate);

      const orderPaymentsByDate: { [date: string]: { total: number; cash: number } } = {};
      Object.keys(dates).forEach((date) => {
        orderPaymentsByDate[date] = { total: 0, cash: 0 };
      });
      orderPayments.forEach((orderPayment) => {
        const orderPaymentDate =
          (orderPayment.paidDate.getMonth() + 1).toString().padStart(2, '0') +
          '/' +
          orderPayment.paidDate.getDate().toString().padStart(2, '0') +
          '/' +
          orderPayment.paidDate.getFullYear(); //Convert to string "dd/mm/yyyy"
        orderPaymentsByDate[orderPaymentDate].total += Number(orderPayment.amount);
        if (orderPayment.paymentMethodId === castPaymentMethodId) {
          orderPaymentsByDate[orderPaymentDate].cash += Number(orderPayment.amount);
        }
      });
      return new SuccessResponse(res, orderPaymentsByDate);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async orderReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const { orderStatusId, approvedStatusId, startDate, endDate } = req.body;
      // const startDate = new Date(req.body.startDate).toLocaleDateString();
      // const endDate = new Date(req.body.endDate).toLocaleDateString() + ' 23:59:59';
      const orderRepo = new OrderRepository();
      // let whereConditions = {};
      // if (orderStatusId){
      //   whereConditions = {...whereConditions, orderStatusId: orderStatusId};
      // }
      const options = {
        where: {
          [Op.and]: {
            createdAt: {
              [Op.gte]: new Date(startDate),
              [Op.lte]: new Date(endDate + ' 23:59:59'),
            },
          },
        },
      };
      let orOptions: any = null;
      if (approvedStatusId) orOptions = {...orOptions, approvedStatusId};
      if (orderStatusId) orOptions = {...orOptions, orderStatusId};
      if (orOptions){
        options.where = { ...options.where, ...{[Op.or]: orOptions}};
      }
      
      const orders = await orderRepo.find(options);
      // return new SuccessResponse(res, orders);

      const orderByDate: { [date: string]: number } = generateDateRange(startDate, endDate);
      orders.forEach((order) => {
        const orderDate =
          (order.createdAt.getMonth() + 1).toString().padStart(2, '0') +
          '/' +
          order.createdAt.getDate().toString().padStart(2, '0') +
          '/' +
          order.createdAt.getFullYear(); //Convert to string "dd/mm/yyyy"
        if (orderByDate[orderDate] >= 0) {
          orderByDate[orderDate] += 1;
        }
      });

      return new SuccessResponse(res, orderByDate);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async purchaseOrderReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      // const { productId } = req.body;
      const startDate = new Date(req.body.startDate).toLocaleDateString();
      const endDate = new Date(req.body.endDate).toLocaleDateString() + ' 23:59:59';

      const purchaseItems: {
        [id: number]: {
          sku: string;
          name: string;
          sum: number;
          productQuantity: number;
        };
      } = {};
      const products = await new ProductRepository().find();
      if (products.length > 0) {
        products.map((product) => {
          purchaseItems[product.id] = {
            sku: product.sku || '',
            name: product.name || '',
            sum: 0,
            productQuantity: 0,
          };
        });
      }

      const importedStatus = await new StatusRepository().findOne({ where: { key: STATUSES.imported } });
      let importedProducts: { productQuantity: number; importDate: Date; totalPrice: number; id: number }[] = [];
      if (importedStatus) {
        const importedPurchaseOrders = await new PurchaseOrderRepository().find({
          where: { importStatusId: importedStatus.id },
        });

        importedProducts = Object.values(await new PurchaseOrderProductItemRepository().find())
          .map((purchaseOrderProductItem) => {
            const foundPurchaseOrder = importedPurchaseOrders.find(
              (importedPurchaseOrder) => importedPurchaseOrder.id === purchaseOrderProductItem.purchaseOrderId,
            );
            if (foundPurchaseOrder) {
              return {
                productQuantity: purchaseOrderProductItem.quantity,
                importDate: foundPurchaseOrder.importDate,
                totalPrice: purchaseOrderProductItem.totalPrice,
                id: purchaseOrderProductItem.productId,
              };
            } else {
              return null;
            }
          })
          .filter(
            (product): product is { productQuantity: number; importDate: Date; totalPrice: number; id: number } =>
              product !== null,
          ); // Filter out null values
      }

      importedProducts.forEach(
        (product: { productQuantity: number; importDate: Date; totalPrice: number; id: number }) => {
          if (product.importDate > new Date(startDate) && product.importDate < new Date(endDate)) {
            purchaseItems[product.id].sum += Number(product.totalPrice);
            purchaseItems[product.id].productQuantity += Number(product.productQuantity);
          }
        },
      );

      return new SuccessResponse(res, purchaseItems);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async purchaseOrderPaymentReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const { startDate, endDate } = req.body;
      const orderPaymentItems: {
        [key: string]: {
          name: string;
          sum: number;
        };
      } = {};
      const paymentMethods = await new PaymentMethodRepository().find();
      paymentMethods.forEach((paymentMethod) => {
        orderPaymentItems[paymentMethod.key] = {
          name: paymentMethod.name,
          sum: 0,
        };
      });
      const orderPayments = await new PurchaseOrderPaymentRepository().find({
        include: [
          {
            model: PaymentMethod,
            as: 'paymentMethod',
          },
          {
            model: PurchaseOrder,
            as: 'purchaseOrder',
          },
        ],
      });

      orderPayments.forEach((orderPayment: any) => {
        const key = orderPayment.paymentMethod.key;
        if (key) {
          if (
            orderPayment.purchaseOrder.importDate > new Date(startDate) &&
            orderPayment.purchaseOrder.importDate < new Date(endDate + ' 23:59:59')
          ) {
            orderPaymentItems[key].sum += Number(orderPayment.purchaseOrder.totalPrice);
          }
        }
      });
      return new SuccessResponse(res, orderPaymentItems);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async inventoryReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const items: {
        [id: number]: {
          sku: string;
          name: string;
          productQuantity: number;
        };
      } = {};
      const products = await new ProductRepository().find();
      products.forEach((product) => {
        items[product.id] = {
          sku: product.sku || '',
          name: product.name || '',
          productQuantity: product.inventoryQuantity || 0,
        };
      });
      return new SuccessResponse(res, items);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async profitAndLossReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const { startDate, endDate } = req.body;
      let salesAmount = 0;
      let salesReturnAmount = 0;
      let vat = 0;
      let deliveryFee = 0;
      let discount = 0;
      let costAmount = 0;
      const supplierDeliveryFee = 0;
      let orderIncome = 0;
      let orderCosts = 0;

      const options = {
        where: {
          [Op.and]: {
            createdAt: {
              [Op.gte]: new Date(startDate),
              [Op.lte]: new Date(endDate + ' 23:59:59'),
            },
          },
        },
        include: [
          {
            model: Product,
            as: 'product',
            include: [
              {
                model: Tax,
                as: 'inputTax',
              },
            ],
          },
        ],
      };

      const [orders, orderItems, returnOrderItems, vouchers, voucherTypes] = await Promise.all([
        new OrderRepository().find({
          where: {
            [Op.and]: {
              createdAt: {
                [Op.gte]: new Date(startDate),
                [Op.lte]: new Date(endDate + ' 23:59:59'),
              },
            },
          },
        }),
        new OrderItemRepository().find(options),
        new ReturnedOrderItemRepository().find(options),
        new VoucherRepository().find({
          where: {
            [Op.and]: {
              recordedDate: {
                [Op.gte]: new Date(startDate),
                [Op.lte]: new Date(endDate + ' 23:59:59'),
              },
              voucherGroupId: {
                [Op.ne]: null,
              },
            },
          },
        }),
        new VoucherTypeRepository().find(),
      ]);

      orderItems.forEach((orderItem) => {
        salesAmount += Number(orderItem.price) * Number(orderItem.quantity);
        costAmount += Number((orderItem as any).product?.costPrice || 0) * Number(orderItem.quantity);
      });

      returnOrderItems.forEach((returnOrderItem) => {
        salesReturnAmount += Number(returnOrderItem.price) * Number(returnOrderItem.quantity);
      });

      orders.forEach((order) => {
        vat += Number(order.totalTaxPrice);
        deliveryFee += Number(order.shippingFee);
        discount += Number(order.discount);
      });

      const voucherPaymentType = voucherTypes.find((voucherType) => voucherType.key === VOUCHER_TYPES.paymentVoucher);
      const voucherReceiptType = voucherTypes.find((voucherType) => voucherType.key === VOUCHER_TYPES.receiptVoucher);

      vouchers.forEach((voucher) => {
        if (voucher.voucherTypeId === voucherPaymentType?.id) {
          orderCosts += Number(voucher.value);
        }

        if (voucher.voucherTypeId === voucherReceiptType?.id) {
          orderIncome += Number(voucher.value);
        }
      });

      const result = {
        saleRevenue: {
          actualSalesAmount: {
            salesAmount: salesAmount,
            salesReturnAmount: salesReturnAmount,
          },
          vat: vat,
          deliveryFee: deliveryFee,
          discount: discount,
        },
        salesExpenses: {
          costAmount: costAmount,
          deliveryFee: supplierDeliveryFee,
        },
        orderIncome: orderIncome,
        orderCosts: orderCosts,
      };

      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async cashBookReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const { startDate, endDate } = req.body;
      let receipt = 0; // total receipt IN range time
      let payment = 0; // total payment IN range time
      let totalReceipt = 0; // total receipt ALL the time
      let totalPayment = 0; // total payment ALL the time
      let fundBalance = 0; // total fund balance = totalReceipt - totalPayment
      let beginBalance = 0; // beginning balance = totalFundBalance - receipt + payment;

      let whereConditions = {};
      if (startDate || endDate) {
        whereConditions = {
          ...whereConditions,
          recordedDate: {
            ...(startDate && { [Op.gte]: new Date(startDate) }),
            ...(endDate && { [Op.lte]: new Date(endDate + ' 23:59:59') }),
          },
        };
      }

      const voucherTypeRepo = new VoucherTypeRepository();
      const receiptVoucherType = await voucherTypeRepo.findOne({
        where: {
          key: VOUCHER_TYPES.receiptVoucher,
        },
      });
      const paymentVoucherType = await voucherTypeRepo.findOne({
        where: {
          key: VOUCHER_TYPES.paymentVoucher,
        },
      });

      // Calculate the amount of money in the fund as of the last day of the filter date.
      // fundBalance =  totalReceipt - totalPayment
      if (receiptVoucherType || paymentVoucherType) {
        const voucherTypeIds = [];
        if (receiptVoucherType) {
          totalReceipt = await Voucher.sum('value', {
            where: {
              voucherTypeId: receiptVoucherType.id,
              recordedDate: {
                ...(endDate && { [Op.lte]: new Date(endDate + ' 23:59:59') }),
              },
            },
          });
          voucherTypeIds.push(receiptVoucherType.id);
        }
        if (paymentVoucherType) {
          totalPayment = await Voucher.sum('value', {
            where: {
              voucherTypeId: paymentVoucherType.id,
              recordedDate: {
                ...(endDate && { [Op.lte]: new Date(endDate + ' 23:59:59') }),
              },
            },
          });
          voucherTypeIds.push(paymentVoucherType.id);
        }

        // Find voucher which is payment or receipt type
        whereConditions = {
          ...whereConditions,
          voucherTypeId: {
            [Op.or]: voucherTypeIds,
          },
        };
      }

      const options: FindOptions = {
        where: whereConditions,
        include: [
          {
            model: VoucherType,
            as: 'voucherType',
          },
          {
            model: User,
            as: 'staff',
          },
          {
            model: PaymentMethod,
            as: 'paymentMethod',
          },
          {
            model: Customer,
            as: 'customer',
          },
          {
            model: Supplier,
            as: 'supplier',
          },
        ],
        order: [['createdAt', 'DESC']],
      };

      const voucher = await Voucher.findAndCountAll(options);

      voucher.rows.forEach((row) => {
        row.voucherTypeId === receiptVoucherType?.id ? (receipt += Number(row.value)) : (payment += Number(row.value));
      });

      fundBalance = Number(totalReceipt) - Number(totalPayment);
      beginBalance = Number(fundBalance) - Number(receipt) + Number(payment);
      return new SuccessResponse(res, {
        fundBalance: fundBalance,
        beginBalance: beginBalance,
        receipt: receipt,
        payment: payment,
        ...voucher,
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  // {
  //   {
  //     customerId: ...,
  //     ...,
  //     totalDebt:...,
  //     beginDebt:...,
  //     endDebt:...,
  //   },
  // }

  // - nợ tăng trong kỳ của mỗi customerId: tổng debtAmount của các recordedDate nhỏ nhất
  // - nợ giảm trong kỳ của mỗi customerId: nợ tăng trong kỳ của mỗi customerId trừ đi tổng
  // debtAmount của các recordedDate lớn nhất
  async customerDebtReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const { startDate, endDate } = req.body;

      const customerDebt = await new DebtTypeRepository().findOne({ where: { key: DEBT_TYPES.customerDebt } });

      const debRepo = new DebtRepository();
      //tìm nợ trong kỳ
      const inRangeDebts = await debRepo.find({
        where: {
          recordedDate: {
            [Op.and]: [{ [Op.gte]: startDate }, { [Op.lte]: endDate + ' 23:59:59' }],
          },
          debtTypeId: customerDebt?.id,
        },
        order: [
          ['orderId', 'ASC'],
          ['recordedDate', 'ASC'],
        ],
        include: [
          {
            model: Customer,
            as: 'customer',
            include: [
              {
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
            ],
          },
        ],
      });

      const latestDebts: {
        [customerId: number]: {
          code: any;
          name: string;
          address: string;
          ward: Ward;
          phoneNumber: string;
          beforeDebt: number;
          afterDebt: number;
          increaseDebt: number;
          decreaseDebt: number;
        };
      } = {};
      let begin = 0;
      let end = 0;
      const customers: string[] = [];

      for (let i = 0; i < inRangeDebts.length; i++) {
        const debt: any = inRangeDebts[i];
        if (debt.voucherId === null) {
          if (debt.customerId && !latestDebts[debt.customerId]) {
            customers.push(debt.customerId);
            latestDebts[debt.customerId] = {
              code: debt.customer.id,
              name: debt.customer.name,
              address: debt.customer.address,
              ward: debt.customer.ward,
              phoneNumber: debt.customer.phoneNumber,
              beforeDebt: 0,
              afterDebt: 0,
              increaseDebt: Number(debt.debtAmount) || 0,
              decreaseDebt: 0,
            };
          } else {
            if (latestDebts[debt.customerId].increaseDebt)
              latestDebts[debt.customerId].increaseDebt += Number(debt.debtAmount);
          }
        }
        if (i === inRangeDebts.length - 1) {
          end = i;
          const decreaseDebt = Number(inRangeDebts[begin].debtAmount) - Number(inRangeDebts[end].debtAmount);
          if (debt.customerId && !latestDebts[debt.customerId]) {
            customers.push(debt.customerId);
            latestDebts[debt.customerId] = {
              code: debt.customer.id,
              name: debt.customer.name,
              address: debt.customer.address,
              ward: debt.customer.ward,
              phoneNumber: debt.customer.phoneNumber,
              beforeDebt: 0,
              afterDebt: 0,
              increaseDebt: 0,
              decreaseDebt: decreaseDebt || 0,
            };
          } else {
            latestDebts[debt.customerId].decreaseDebt += Number(decreaseDebt);
          }
        } else if (inRangeDebts[i].orderId !== inRangeDebts[i + 1].orderId) {
          end = i;
          const decreaseDebt = Number(inRangeDebts[begin].debtAmount) - Number(inRangeDebts[end].debtAmount);
          if (debt.customerId && !latestDebts[debt.customerId]) {
            customers.push(debt.customerId);
            latestDebts[debt.customerId] = {
              code: debt.customer.id,
              name: debt.customer.name,
              address: debt.customer.address,
              ward: debt.customer.ward,
              phoneNumber: debt.customer.phoneNumber,
              beforeDebt: 0,
              afterDebt: 0,
              increaseDebt: 0,
              decreaseDebt: decreaseDebt || 0,
            };
          } else {
            latestDebts[debt.customerId].decreaseDebt += Number(decreaseDebt);
          }
          begin = i + 1;
        }
      }

      // Tìm nợ đầu kỳ
      const allDebts = await debRepo.find({
        where: {
          recordedDate: { [Op.lte]: endDate + ' 23:59:59' },
          debtTypeId: customerDebt?.id,
          customerId: {
            [Op.in]: customers,
          },
        },
        order: [
          ['orderId', 'ASC'],
          ['recordedDate', 'ASC'],
        ],
      });

      for (let i = 0; i < allDebts.length; i++) {
        const debt: any = allDebts[i];
        if (i === allDebts.length - 1) {
          latestDebts[debt.customerId].beforeDebt += Number(debt.debtAmount);
        } else if (allDebts[i].orderId !== allDebts[i + 1].orderId) {
          latestDebts[debt.customerId].beforeDebt += Number(debt.debtAmount);
        }
      }

      //calculate after debt
      for (const customerId in latestDebts) {
        const debt = latestDebts[customerId];
        debt.afterDebt =
          Number(debt?.beforeDebt || 0) + Number(debt?.increaseDebt || 0) - Number(debt?.decreaseDebt || 0);
      }
      return new SuccessResponse(res, latestDebts);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async supplierDebtReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const { startDate, endDate } = req.body;

      const supplierDebt = await new DebtTypeRepository().findOne({ where: { key: DEBT_TYPES.supplierDebt } });

      const debRepo = new DebtRepository();
      //tìm nợ trong kỳ
      const inRangeDebts = await debRepo.find({
        where: {
          recordedDate: {
            [Op.and]: [{ [Op.gte]: startDate }, { [Op.lte]: endDate + ' 23:59:59' }],
          },
          debtTypeId: supplierDebt?.id,
        },
        order: [
          ['orderId', 'ASC'],
          ['recordedDate', 'ASC'],
        ],
        include: [
          {
            model: Supplier,
            as: 'supplier',
            include: [
              {
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
            ],
          },
        ],
      });

      const latestDebts: {
        [supplierId: number]: {
          code: any;
          name: string;
          address: string;
          ward: Ward;
          phoneNumber: string;
          beforeDebt: number;
          afterDebt: number;
          increaseDebt: number;
          decreaseDebt: number;
        };
      } = {};
      let begin = 0;
      let end = 0;
      const suppliers: string[] = [];

      for (let i = 0; i < inRangeDebts.length; i++) {
        const debt: any = inRangeDebts[i];
        if (debt.voucherId === null) {
          if (debt.supplierId && !latestDebts[debt.supplierId]) {
            suppliers.push(debt.supplierId);
            latestDebts[debt.supplierId] = {
              code: debt.supplier.code,
              name: debt.supplier.name,
              address: debt.supplier.address,
              ward: debt.supplier.ward,
              phoneNumber: debt.supplier.phoneNumber,
              beforeDebt: 0,
              afterDebt: 0,
              increaseDebt: Number(debt.debtAmount) || 0,
              decreaseDebt: 0,
            };
          } else {
            if (latestDebts[debt.supplierId].increaseDebt)
              latestDebts[debt.supplierId].increaseDebt += Number(debt.debtAmount);
          }
        }
        if (i === inRangeDebts.length - 1) {
          end = i;
          const decreaseDebt = Number(inRangeDebts[begin].debtAmount) - Number(inRangeDebts[end].debtAmount);
          if (debt.supplierId && !latestDebts[debt.supplierId]) {
            suppliers.push(debt.supplierId);
            latestDebts[debt.supplierId] = {
              code: debt.supplier.code,
              name: debt.supplier.name,
              address: debt.supplier.address,
              ward: debt.supplier.ward,
              phoneNumber: debt.supplier.phoneNumber,
              beforeDebt: 0,
              afterDebt: 0,
              increaseDebt: 0,
              decreaseDebt: decreaseDebt || 0,
            };
          } else {
            latestDebts[debt.supplierId].decreaseDebt += Number(decreaseDebt);
          }
        } else if (inRangeDebts[i].orderId !== inRangeDebts[i + 1].orderId) {
          end = i;
          const decreaseDebt = Number(inRangeDebts[begin].debtAmount) - Number(inRangeDebts[end].debtAmount);
          if (debt.supplierId && !latestDebts[debt.supplierId]) {
            suppliers.push(debt.supplierId);
            latestDebts[debt.supplierId] = {
              code: debt.supplier.code,
              name: debt.supplier.name,
              address: debt.supplier.address,
              ward: debt.supplier.ward,
              phoneNumber: debt.supplier.phoneNumber,
              beforeDebt: 0,
              afterDebt: 0,
              increaseDebt: 0,
              decreaseDebt: decreaseDebt || 0,
            };
          } else {
            latestDebts[debt.supplierId].decreaseDebt += Number(decreaseDebt);
          }
          begin = i + 1;
        }
      }

      // Tìm nợ đầu kỳ
      const allDebts = await debRepo.find({
        where: {
          recordedDate: { [Op.lte]: endDate + ' 23:59:59' },
          debtTypeId: supplierDebt?.id,
          supplierId: {
            [Op.in]: suppliers,
          },
        },
        order: [
          ['orderId', 'ASC'],
          ['recordedDate', 'ASC'],
        ],
      });

      for (let i = 0; i < allDebts.length; i++) {
        const debt: any = allDebts[i];
        if (i === allDebts.length - 1) {
          latestDebts[debt.supplierId].beforeDebt += Number(debt.debtAmount);
        } else if (allDebts[i].orderId !== allDebts[i + 1].orderId) {
          latestDebts[debt.supplierId].beforeDebt += Number(debt.debtAmount);
        }
      }

      //calculate after debt
      for (const supplierId in latestDebts) {
        const debt = latestDebts[supplierId];
        debt.afterDebt =
          Number(debt?.beforeDebt || 0) + Number(debt?.increaseDebt || 0) - Number(debt?.decreaseDebt || 0);
      }
      return new SuccessResponse(res, latestDebts);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async customerBuyProductsOverTimeReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const { startDate, endDate } = req.body;
      const customerByMonth: { [date: string]: { total: number; firstTimeCustomer: number } } = generateMonthRange(
        startDate,
        endDate,
      );
      const orderRepo = new OrderRepository();
      const orderOptions: FindOptions = {
        where: {
          createdAt: {
            [Op.and]: {
              [Op.gte]: startDate + ' 00:00:00',
              [Op.lte]: endDate + ' 23:59:59',
            },
          },
        },
        order: [['createdAt', 'ASC']],
      };
      const ordersInRange = await orderRepo.find(orderOptions);
      const customerIds: number[] = [];
      const customerIdsByMonth: { date: string; customerIds: number[] }[] = [];
      ordersInRange.forEach((order) => {
        // push customer id to array to find first time customers
        const findCustomer = customerIds.findIndex((customerId) => customerId === order.customerId);
        if (findCustomer === -1) {
          customerIds.push(Number(order.customerId));
        }
        const date = new Date(order.createdAt);
        const formatDate =
          (date.getMonth() + 1).toString().padStart(2, '0').toString().padStart(2, '0') + '/' + date.getFullYear();

        const findCustomerByMonth = customerIdsByMonth.findIndex((item) => item.date === formatDate);
        if (findCustomerByMonth !== -1) {
          const findId = customerIdsByMonth[findCustomerByMonth].customerIds.findIndex((id) => id === order.customerId);
          if (findId === -1) {
            customerIdsByMonth[findCustomerByMonth].customerIds.push(Number(order.customerId));
            if (customerByMonth[formatDate]?.total >= 0) {
              customerByMonth[formatDate].total += 1;
            } else {
              customerByMonth[formatDate].total = 1;
            }
          }
        } else {
          customerIdsByMonth.push({
            date: formatDate,
            customerIds: [Number(order.customerId)],
          });
          if (customerByMonth[formatDate]?.total >= 0) {
            customerByMonth[formatDate].total += 1;
          } else {
            customerByMonth[formatDate].total = 1;
          }
        }
      });

      const allOrdersByCustomers = await orderRepo.find({
        where: {
          customerId: {
            [Op.in]: customerIds,
          },
          createdAt: {
            [Op.lte]: endDate + ' 23:59:59',
          },
        },
        order: [['createdAt', 'ASC']],
      });

      // If id exists in customerIds
      allOrdersByCustomers.forEach((order) => {
        const findFirstTimeCustomer = customerIds.findIndex((customer) => customer === order.customerId);
        const date = new Date(order.createdAt);
        const formatDate =
          (date.getMonth() + 1).toString().padStart(2, '0').toString().padStart(2, '0') + '/' + date.getFullYear();
        if (findFirstTimeCustomer !== -1) {
          if (customerByMonth[formatDate]) {
            if (customerByMonth[formatDate].firstTimeCustomer >= 0) {
              customerByMonth[formatDate].firstTimeCustomer += 1;
            } else {
              customerByMonth[formatDate].firstTimeCustomer = 1;
            }
          }
          //remove id from customerIds
          customerIds.splice(findFirstTimeCustomer, 1);
        }
      });

      return new SuccessResponse(res, customerByMonth);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async customerBuyProductsByProductReport(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return new SuccessResponse(res, 'customerBuyProductsByProductReport');
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async kpiDashboard(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const { startDate, endDate } = req.body;
      const options = {
        where: {
          createdAt: {
            [Op.and]: {
              [Op.gte]: startDate + ' 00:00:00',
              [Op.lte]: endDate + ' 23:59:59',
            },
          },
        },
      };
      const approvedStatus = await new StatusRepository().findOne({ where: { key: STATUSES.approvedOrder } });
      const [orders, allReturnOrderItems] = await Promise.all([
        new OrderRepository().find({
          ...options,
          where: { ...options.where, approvedStatusId: approvedStatus?.id },
          include: [
            {
              model: Status,
              as: 'orderStatus',
            },
            {
              model: OrderItem,
              as: 'orderItems',
            }
          ],
          order: [['customerId', 'ASC']],
        }),
        new ReturnedOrderItemRepository().find({...options, include: [{
          model: ReturnedOrder,
          as: 'returnedOrder',
        }]}),
      ]);
      const kpis: {
        revenue: number;
        orderCount: number;
        productCount: number;
        customerCount: number;
        returnProductCount: number;
      } = { revenue: 0, orderCount: 0, productCount: 0, customerCount: 0, returnProductCount: 0 };
      
      if(orders.length > 0) kpis.customerCount += 1;

      const orderIds: number[] = [];
      orders.forEach((order, index) => {
        if ((order as any).orderStatus?.key !== STATUSES.orderCanceled) {
          orderIds.push(Number(order.id));
          // Calculate customer by order
          if (index != orders.length - 1) {
            if (orders[index + 1].customerId !== order.customerId) {
              kpis.customerCount += 1;
            }
          }   
          // Calculate revenue
          kpis.revenue += Number(order.totalPrice);
          // Calculate order count
          kpis.orderCount += 1;
          // Calculate product by order
          const orderItems = (order as any).orderItems;
          if (orderItems) {
            orderItems.forEach((orderItem: OrderItem) => {
              if (orderItem.productId)
                kpis.productCount += Number(orderItem.quantity);
            });
          }
        }
      });

      allReturnOrderItems.forEach((returnOrderItem) => {
        if (orderIds.includes(Number((returnOrderItem as any).returnedOrder.orderId))) {
          kpis.returnProductCount += Number(returnOrderItem.quantity)*Number(returnOrderItem.price);
        }
      });
      
      return new SuccessResponse(res, kpis);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
}
export default StatisticController;
