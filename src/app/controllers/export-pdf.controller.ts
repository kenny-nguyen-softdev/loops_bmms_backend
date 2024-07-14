import { DEBT_TYPES, PAPER_SIZES, STATUSES, VOUCHER_TYPES } from '../../constant';
import { PDFDocumentWithTables } from '../../utils/pdfkit-table';
import { ErrorResponse, SuccessResponse } from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import OrderRepository from '../repositories/Order/order.repository';
import {
  Combo,
  Customer,
  Debt,
  District,
  Order,
  OrderItem,
  Product,
  Province,
  PurchaseOrder,
  PurchaseOrderProductItem,
  ReturnedOrder,
  Service,
  Status,
  Supplier,
  Tax,
  User,
  Voucher,
  Ward,
} from '../../models';
import { FindOptions, where } from 'sequelize';
import OrderItemRepository from '../repositories/OrderItem/order-item.repository';
import DebtRepository from '../repositories/Debt/debt.repository';
import { Op } from 'sequelize';
import DebtTypeRepository from '../repositories/DebtType/debt-type.repository';
import PurchaseOrderRepository from '../repositories/PurchaseOrder/purchase-order.repository';
import PurchaseOrderProductItemRepository from '../repositories/PurchaseOrderProductItem/purchase-order-product-item.repository';
import ExportPdfRepository from '../repositories/ExportPdf/export-pdf.repository';
import UserRepository from '../repositories/User/user.repository';
import CustomerRepository from '../repositories/Customer/customer.repository';
import { formatCurrency, uploadPdf } from '../../utils';
import VoucherRepository from '../repositories/Voucher/voucher.repository';
import VoucherTypeRepository from '../repositories/VoucherType/voucher-type.repository';
import SupplierRepository from '../repositories/Supplier/supplier.repository';
import ReturnedOrderRepository from '../repositories/ReturnedOrder/returned-order.repository';
import ReturnedOrderItemRepository from '../repositories/ReturnedOrderItem/returned-order-item.repository';
import { multiplyDimensions } from '../../utils/string-handler.util';
import StatusRepository from '../repositories/Status/status.repository';

type SaleProductReportType = {code: string, name: string, quantity: number, totalPrice: number, returnedQuantity: number, returnedTotalPrice: number};
type CustomerDebtType = {
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
}

type PaperSizeType = {
  width: number;
  height: number;
  usableWidth: number;
  marginLeft: number;
  marginRight: number;
  marginTop: number;
  marginBottom: number;
  margin?: number;
};

const paper = 'A4';
// const FONT_BOLD_PATH = 'src/fonts/MINIONPRO-BOLD.OTF';
const FONT_BOLD_PATH = 'src/fonts/MINIONPRO-BOLD.OTF';
const FONT_BOLD_ITALIC_PATH = 'src/fonts/MINIONPRO-BOLDCNIT.OTF';
const FONT_NORMAL_PATH = 'src/fonts/MINIONPRO-SUBH.OTF';
const FONT_NORMAL_ITALIC_PATH = 'src/fonts/MINIONPRO-IT.OTF';

const paperSize: PaperSizeType = {
  ...PAPER_SIZES[paper],
  marginLeft: 40,
  marginRight: 40,
  marginTop: 20,
  marginBottom: 20,
  usableWidth: PAPER_SIZES[paper].width - 40 * 2,
};

const newLineHeight = 15;

class ExportPdfController {
  orderRepository: OrderRepository;
  orderItemRepository: OrderItemRepository;
  debtRepository: DebtRepository;
  debtTypeRepository: DebtTypeRepository;
  purchaseOrderRepository: PurchaseOrderRepository;
  purchaseOrderItemRepository: PurchaseOrderProductItemRepository;
  exportPdfRepo: ExportPdfRepository;
  userRepo: UserRepository;
  customerRepo: CustomerRepository;
  voucherRepo: VoucherRepository;
  voucherTypeRepo: VoucherTypeRepository;
  supplierRepo: SupplierRepository;
  returnedOrderRepo: ReturnedOrderRepository;
  returnedOrderItemRepo: ReturnedOrderItemRepository;
  constructor() {
    this.orderRepository = new OrderRepository();
    this.orderItemRepository = new OrderItemRepository();
    this.debtRepository = new DebtRepository();
    this.debtTypeRepository = new DebtTypeRepository();
    this.purchaseOrderRepository = new PurchaseOrderRepository();
    this.purchaseOrderItemRepository = new PurchaseOrderProductItemRepository();
    this.exportPdfRepo = new ExportPdfRepository();
    this.userRepo = new UserRepository();
    this.customerRepo = new CustomerRepository();
    this.voucherRepo = new VoucherRepository();
    this.voucherTypeRepo = new VoucherTypeRepository();
    this.supplierRepo = new SupplierRepository();
    this.returnedOrderRepo = new ReturnedOrderRepository();
    this.returnedOrderItemRepo = new ReturnedOrderItemRepository();
  }
  async saleOrderPdf(req: IRequest, res: IResponse): Promise<any> {
    try {
      const { orderId, storeInformation } = req.body;
      const customerDebt = await this.debtTypeRepository.findOne({ where: { key: DEBT_TYPES.customerDebt } });

      const orderOptions: FindOptions = {
        where: {
          id: orderId,
        },
        include: [
          {
            model: Customer,
            as: 'customer',
          },
          {
            model: User,
            as: 'staff',
          },
          {
            model: Status,
            as: 'orderStatus',
          },
        ],
      };
      const order = await this.orderRepository.findOneOrFail(orderOptions);
      const orderItemOptions: FindOptions = {
        where: {
          orderId: orderId,
        },
        include: [
          {
            model: Product,
            as: 'product',
          },
          {
            model: Combo,
            as: 'combo',
          },
          {
            model: Service,
            as: 'service',
          },
        ],
      };
      const debtOptions: FindOptions = {
        where: {
          recordedDate: { [Op.lte]: order.createdAt.toLocaleDateString() + ' 23:59:59' },
          debtTypeId: customerDebt?.id,
          customerId: order.customerId,
          orderId: {[Op.ne]: null}
        },
        order: [
          ['orderId', 'ASC'],
          ['recordedDate', 'DESC'],
        ],
      };
      const [orderItems, allDebts] = await Promise.all([
        this.orderItemRepository.find(orderItemOptions),
        this.debtRepository.find(debtOptions),
      ]);
      // console.log(allDebts.map((debt) => debt.orderId));
      const debts: Debt[] = [];
      if (allDebts.length > 0) debts.push(allDebts[0]);
      for (let i = 1; i <= allDebts.length - 1; i++) {
        if (allDebts[i].orderId !== allDebts[i - 1].orderId) debts.push(allDebts[i]);
      }
      const pdf = await this.generateOrderPdf(storeInformation, order, orderItems, debts);

      res.setHeader('Content-Type', 'application/pdf');
      res.setHeader('Content-Disposition', 'attachment; filename="saleOrderReport.pdf"');
      res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
      res.send(pdf);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async purchaseOrderPdf(req: IRequest, res: IResponse): Promise<any> {
    try {
      const { purchaseOrderId, storeInformation } = req.body;
      const supplierDebt = await this.debtTypeRepository.findOne({ where: { key: DEBT_TYPES.supplierDebt } });

      const purchaseOrderOptions: FindOptions = {
        where: {
          id: purchaseOrderId,
        },
        include: [
          {
            model: Supplier,
            as: 'supplier',
          },
          {
            model: User,
            as: 'staff',
          },
        ],
      };
      const purchaseOrder = await this.purchaseOrderRepository.findOneOrFail(purchaseOrderOptions);
      const purchaseOrderItemOptions: FindOptions = {
        where: {
          purchaseOrderId: purchaseOrderId,
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
      const debtOptions: FindOptions = {
        where: {
          recordedDate: { [Op.lte]: purchaseOrder.createdAt.toLocaleDateString() + ' 23:59:59' },
          debtTypeId: supplierDebt?.id,
          supplierId: purchaseOrder.supplierId,
        },
        order: [
          ['supplierId', 'ASC'],
          ['recordedDate', 'DESC'],
        ],
      };
      const [purchaseOrderItems, allDebts] = await Promise.all([
        this.purchaseOrderItemRepository.find(purchaseOrderItemOptions),
        this.debtRepository.find(debtOptions),
      ]);
      const debts: Debt[] = [];
      if (allDebts.length > 0) debts.push(allDebts[0]);
      for (let i = 1; i <= allDebts.length - 1; i++) {
        if (allDebts[i].supplierId !== allDebts[i - 1].supplierId) debts.push(allDebts[i]);
      }
      const pdf = await this.generatePurchaseOrderPdf(storeInformation, purchaseOrder, purchaseOrderItems, debts);

      res.setHeader('Content-Type', 'application/pdf');
      res.setHeader('Content-Disposition', 'attachment; filename="purchaseOrderReport.pdf"');
      res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
      res.send(pdf);
      // return new SuccessResponse(res, purchaseOrderItems);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async SaleReportPdf(req: IRequest, res: IResponse): Promise<any> {
    try {
      const {
        storeInformation,
        startDate,
        endDate,
        customerId,
        staffId,
        orderStatusId,
        paymentStatusId,
        exportedInventoryStatusId,
        approvedStatusId,
      } = req.body;
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
            model: Customer,
            as: 'customer',
          },
        ],
      };
      let andOptions: any = null;
      if (customerId) andOptions = {...andOptions, customerId: customerId};
      if (staffId) andOptions = {...andOptions, staffId};
      if (orderStatusId) andOptions = {...andOptions, orderStatusId};
      if (paymentStatusId) andOptions = {...andOptions, paymentStatusId};
      if (exportedInventoryStatusId) andOptions = {...andOptions, exportedInventoryStatusId};
      if (approvedStatusId) andOptions = {...andOptions, approvedStatusId};
      
      if (andOptions){
        options.where = { ...options.where, ...{[Op.and]: andOptions}};
      }
      const orders = await this.orderRepository.find(options);
      const orderIds: number[] = orders.map((order) => order.id);
      const returnedOrders: ReturnedOrder[] = await this.returnedOrderRepo.find({
        where: {
          orderId: { [Op.in]: orderIds },
        },
      });

      const pdf = await this.generateSaleReportPdf(
        storeInformation,
        startDate,
        endDate,
        orders,
        customerId,
        staffId,
        returnedOrders,
      );
      const downloadedUrl = await uploadPdf(storeInformation.filename, pdf);
      return new SuccessResponse(res, { url: downloadedUrl });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async voucherReportPdf(req: IRequest, res: IResponse): Promise<any> {
    try {
      const { storeInformation, startDate, endDate, customerId, staffId, supplierId } = req.body;
      
      const options = {
        where: {
          [Op.and]: {
            recordedDate: {
              [Op.gte]: new Date(startDate),
              [Op.lte]: new Date(endDate + ' 23:59:59'),
            },
          },
        },
        include: [
          {
            model: Customer,
            as: 'customer',
          },
          {
            model: User,
            as: 'staff',
          },
          {
            model: Supplier,
            as: 'supplier',
          },
        ],
      };
      let andOptions: any = null;
      if (customerId) {
        andOptions = { ...andOptions, customerId: customerId };
      }
      if (staffId) {
        andOptions = { ...andOptions, staffId: staffId };
      }
      if (supplierId) {
        andOptions = { ...andOptions, supplierId: supplierId };
      }
      if (andOptions){
        options.where = { ...options.where, ...{[Op.and]: andOptions}};
       }

      const vouchers = await this.voucherRepo.find(options);
      const pdf = await this.generateVoucherReportPdf(
        storeInformation,
        startDate,
        endDate,
        vouchers,
        customerId,
        staffId,
        supplierId,
      );
      const downloadedUrl = await uploadPdf(storeInformation.filename, pdf);
      return new SuccessResponse(res, { url: downloadedUrl });

      // res.setHeader('Content-Type', 'application/pdf');
      // res.setHeader('Content-Disposition', `attachment; filename="${storeInformation.filename}.pdf"`);
      // res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
      // res.send(pdf);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async saleProductReportPdf(req: IRequest, res: IResponse): Promise<any> {
    try {
      const { storeInformation, startDate, endDate, orderStatusId, paymentStatusId, exportedInventoryStatusId, approvedStatusId } =
        req.body;

      const options = {
        where: {
          [Op.and]: {
            createdAt: {
              [Op.gte]: new Date(startDate),
              [Op.lte]: new Date(endDate + ' 23:59:59'),
            },
            productId: { [Op.ne]: null },
          },
        },
        include: [
          {
            model: Product,
            as: 'product',
          }
        ],
      };

      let andOptions: any = null;
      if (orderStatusId) andOptions = {...andOptions, orderStatusId};
      if (paymentStatusId) andOptions = {...andOptions, paymentStatusId};
      if (exportedInventoryStatusId) andOptions = {...andOptions, exportedInventoryStatusId};
      if (approvedStatusId) andOptions = {...andOptions, approvedStatusId};
  

      const [allOrderItems, returnOrderItems] = await Promise.all([
        this.orderItemRepository.find({
          where: {
            [Op.and]: {
              createdAt: {
                [Op.gte]: new Date(startDate),
                [Op.lte]: new Date(endDate + ' 23:59:59'),
              },
              productId: { [Op.ne]: null },
            },
          },
          include: [
            {
              model: Product,
              as: 'product',
            },
            {
              model: Order,
              as: 'order',
              where: {
                [Op.and]: andOptions || {
                  id: { [Op.ne]: null },
                },
              },
            },
          ],
        }),
        this.returnedOrderItemRepo.find(options),
      ]);
      const orderItems = [...allOrderItems];
      const productIds: number[] = [];
      const products: SaleProductReportType[] = [];

      returnOrderItems.forEach((returnOrderItem) => {
        const index = productIds.indexOf(Number(returnOrderItem?.productId));
        if (index === -1) {
          productIds.push(Number(returnOrderItem?.productId));
          const newProduct: SaleProductReportType = {
            code: (returnOrderItem as any)?.product?.sku,
            name: (returnOrderItem as any)?.product?.name,
            quantity: 0,
            totalPrice: 0,
            returnedQuantity: Number(returnOrderItem?.quantity) || 0,
            returnedTotalPrice: Number(returnOrderItem?.totalPrice) || 0,
          };
          products.push(newProduct);
        } else {
          products[index].returnedQuantity += Number(returnOrderItem?.quantity || 0);
          products[index].returnedTotalPrice += Number(returnOrderItem?.totalPrice || 0);
        }
      });

      orderItems.forEach((orderItem) => {
        const index = productIds.indexOf(Number(orderItem?.productId));
        if (index === -1) {
          productIds.push(Number(orderItem?.productId));
          const newProduct: SaleProductReportType = {
            code: (orderItem as any)?.product?.sku,
            name: (orderItem as any)?.product?.name,
            quantity: Number(orderItem?.quantity || 0),
            totalPrice: Number(orderItem?.totalPrice || 0),
            returnedQuantity: 0,
            returnedTotalPrice: 0,
          };
          products.push(newProduct);
        } else {
          products[index].quantity += Number(orderItem?.quantity || 0);
          products[index].totalPrice += Number(orderItem?.totalPrice || 0);
        }
      });

      const pdf = await this.generateSaleProductReportPdf(storeInformation, startDate, endDate, products);
      const downloadedUrl = await uploadPdf(storeInformation.filename, pdf);
      return new SuccessResponse(res, { url: downloadedUrl });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async customerDebtReportPdf(req: IRequest, res: IResponse): Promise<any> {
    try {
      const { storeInformation, startDate, endDate } = req.body;

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

      const latestDebts: CustomerDebtType = {};
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

      const pdf = await this.generateCustomerDebtReportPdf(storeInformation, startDate, endDate, latestDebts);
      const downloadedUrl = await uploadPdf(storeInformation.filename, pdf);
      return new SuccessResponse(res, { url: downloadedUrl });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  async financialReportPdf(req: IRequest, res: IResponse): Promise<any> {
    try {
      const { storeInformation, startDate, endDate, orderStatusId, paymentStatusId, exportedInventoryStatusId, approvedStatusId } = req.body;

      let salesAmount = 0;
      let salesReturnAmount = 0;
      let vat = 0;
      let deliveryFee = 0;
      let discount = 0;
      let costAmount = 0;
      const supplierDeliveryFee = 0;
      let orderIncome = 0;
      let orderCosts = 0;

      let andOptions: any = null;
      if (orderStatusId) andOptions = {...andOptions, orderStatusId};
      if (paymentStatusId) andOptions = {...andOptions, paymentStatusId};
      if (exportedInventoryStatusId) andOptions = {...andOptions, exportedInventoryStatusId};
      if (approvedStatusId) andOptions = {...andOptions, approvedStatusId};
      
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
            ...andOptions,
            [Op.and]: {
              createdAt: {
                [Op.gte]: new Date(startDate),
                [Op.lte]: new Date(endDate + ' 23:59:59'),
              },
            },
          },
        }),
        new OrderItemRepository().find({
          ...options,
          include: [
            ...options.include,
            {
              model: Order,
              as: 'order',
              where: {
                [Op.and]: andOptions || {
                  id: { [Op.ne]: null },
                },
              },
            },
          ],
        }),
        new ReturnedOrderItemRepository().find({
          ...options,
          order: [['createdAt', 'ASC']],
          include:[
            ...options.include,
            {
              model: ReturnedOrder,
              as: 'returnedOrder',
              include: [
                {
                  model: Order,
                  as: 'order',
                  where: {
                    [Op.and]: andOptions || {
                      id: { [Op.ne]: null },
                    },
                  },
                }
              ]
            },
          ]
        }),
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

      const orderItemIds: number[] = [];
      orderItems.forEach((orderItem) => {
        orderItemIds.push(Number(orderItem.productId));
        salesAmount += Number(orderItem.price) * Number(orderItem.quantity);
        // costAmount += Number((orderItem as any).product?.costPrice || 0) * Number(orderItem.quantity);
      });
      
      const purchaseOrderProductItems = await new PurchaseOrderProductItemRepository().find({
        where: {
          productId: {
            [Op.in]: orderItemIds
          },
          createdAt: {
            [Op.lte]: new Date(endDate + ' 23:59:59'),
          },
        },
        order: [['createdAt', 'DESC']],
      });

      orderItems.forEach((orderItem) => {
        let isHavingCostPrice = false;
        purchaseOrderProductItems.forEach((purchaseOrderProductItem) => {
          if (purchaseOrderProductItem.productId === orderItem.productId && purchaseOrderProductItem.createdAt <= orderItem.createdAt) {
            isHavingCostPrice = true;
            costAmount += Number(purchaseOrderProductItem?.price || 0) * Number(orderItem.quantity);
            return;
          }
         });
         if (!isHavingCostPrice) {
          costAmount += Number((orderItem as any).product?.costPrice || 0) * Number(orderItem.quantity);
         }
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
        saleRevenue: (salesAmount - salesReturnAmount) + vat + deliveryFee - discount,
        actualSalesAmount: salesAmount - salesReturnAmount,
          salesAmount: salesAmount,
          salesReturnAmount: salesReturnAmount,
        vat: vat,
        deliveryFee: deliveryFee,
        discount: discount,

        salesExpenses: costAmount + supplierDeliveryFee,
        costAmount: costAmount,
        purchaseDeliveryFee: supplierDeliveryFee,

        orderIncome: orderIncome,
        orderCosts: orderCosts
      };

      const pdf = await this.generateFinancialReportPdf(storeInformation, startDate, endDate, result);
      const downloadedUrl = await uploadPdf(storeInformation.filename, pdf);
      return new SuccessResponse(res, { url: downloadedUrl });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }

  protected generateOrderPdf = async (
    information: any,
    order: Order,
    orderItems: OrderItem[],
    debts: Debt[],
  ): Promise<Buffer> => {
    return new Promise(async (resolve) => {
      const doc = new PDFDocumentWithTables({
        size: paper,
        bufferPages: true,
        margins: { left: 40, right: 40, top: 20, bottom: 20 },
      });
      let totalQuantity = 0;
      let totalDiscount = 0;
      let totalPrice = 0;
      let stt = 0;
      const updateOrderItems: any[] = [];
      orderItems.forEach((orderItem: any) => {
        const name = orderItem?.productId
          ? orderItem.product.name
          : orderItem?.comboId
          ? orderItem.combo.name
          : orderItem.service.name;
        const unit = orderItem?.productUnitId
          ? orderItem.productUnit.name
          : orderItem?.productId
          ? orderItem.product.standardUnit
          : orderItem?.comboId
          ? orderItem.combo.standardUnit
          : orderItem.service.standardUnit;
        const salePrice = orderItem?.productId
          ? Number(orderItem.product.salePrice)
          : orderItem?.comboId
          ? Number(orderItem.combo.salePrice)
          : Number(orderItem.service.salePrice);
        totalQuantity += Number(orderItem.quantity);
        totalDiscount += Number(orderItem.discount);
        totalPrice += Number(salePrice) * Number(orderItem.quantity);

        const specification = orderItem?.description ? orderItem.description.split('|') : '';
        stt++;
        if (specification){
          specification.filter((item: string) => item !== '').forEach((item: string) => {
            const quantity = multiplyDimensions(item);
            const totalPrice = Number(quantity) * Number(salePrice);
            const data = {
              stt: stt.toString(),
              name: name,
              unit: unit,
              specification: item || '',
              salePrice: formatCurrency(salePrice) || '0',
              quantity: quantity,
              discount: orderItem.discount,
              totalPrice: formatCurrency(totalPrice) || '0',
            };
            updateOrderItems.push(data);
          });
        } else {
          const data = {
            stt: stt.toString(),
            // sku: sku,
            name: name,
            unit: unit,
            specification: specification[0] || '',
            salePrice: formatCurrency(salePrice) || '0',
            quantity: orderItem.quantity,
            discount: orderItem.discount,
            totalPrice: formatCurrency(Number(salePrice) * Number(orderItem.quantity)) || '0',
          };
          updateOrderItems.push(data);
        }
      });
      updateOrderItems.push({
        stt: '',
        name: '',
        unit: '',
        specification: '',
        salePrice: 'Tổng',
        quantity: totalQuantity,
        discount: formatCurrency(Number(totalDiscount)) || '0',
        totalPrice: formatCurrency(Number(totalPrice)) || '0',
      });
      const headers = [
        'STT',
        // 'Mã sản phẩm',
        'Tên sản phẩm',
        'Đơn vị',
        'Quy cách',
        'Đơn giá',
        'Số lượng',
        'Chiết khấu',
        'Thành tiền',
      ];
      const distributions = [0.05, 0.15, 0.1, 0.2, 0.12, 0.1, 0.13, 0.15];
      
      const notApprovedOrder = await new StatusRepository().findOneOrFail({
        where: {
          key: STATUSES.notApprovedOrder,
        },
      });
      const isCustomerOrder = order.approvedStatusId === notApprovedOrder.id ? true : false;
      
      await this.exportPdfRepo.pdfHeader(doc, information);
      this.generateOrderInformation(doc, order);
      await this.exportPdfRepo.pdfTable(doc, headers, updateOrderItems, distributions);
      this.generateOrderInTotal(doc, order, debts, isCustomerOrder);

      this.exportPdfRepo.generateHr(doc, paperSize.height - paperSize.marginBottom - paperSize.marginTop);

      doc.end();

      const buffers: any = [];
      doc.on('data', buffers.push.bind(buffers));
      doc.on('end', () => {
        const pdfData = Buffer.concat(buffers);
        resolve(pdfData);
      });
    });
  };

  protected generateSaleReportPdf = async (
    information: any,
    startDate: string,
    endDate: string,
    orders: Order[],
    customerId: string,
    staffId: string,
    returnedOrders: ReturnedOrder[],
  ): Promise<Buffer> => {
    return new Promise(async (resolve) => {
      let totalQuantity = 0;
      let totalPrice = 0;
      let totalVat = 0;
      let totalDiscount = 0;
      let totalReturn = 0;
      let totalRealRevenue = 0;
      
      const doc = new PDFDocumentWithTables({
        size: paper,
        bufferPages: true,
        margins: { left: 40, right: 40, top: 20, bottom: 20 },
      });

      let stt = 0;
      const updateOrders = orders.map((order: any) => {
        const refundPriceTotal = returnedOrders
          .filter((returnedOrder) => returnedOrder.orderId === order.id)
          .reduce((acc, returnedOrder) => acc + Number(returnedOrder.refundPriceTotal), 0);

        totalQuantity += Number(order.quantityTotal);
        totalPrice += Number(order?.totalPrice);
        totalVat += Number(order?.totalTaxPrice);
        totalDiscount += Number(order?.discount);
        totalReturn += Number(refundPriceTotal);
        // totalRealRevenue += Number(order.totalPrice) - Number(order.debtAmount);
        totalRealRevenue += (Number(order.totalPrice) - Number(order?.totalTaxPrice) + Number(order?.discount)) - Number(refundPriceTotal);
        stt++;
        return {
          stt: stt.toString(),
          code: order.code,
          customerName: order?.customer?.name,
          productQuantity: order?.quantityTotal,
          revenue: formatCurrency(Number(order?.totalPrice)) || 0,
          vat:formatCurrency(Number(order?.totalTaxPrice)) || 0,
          discount: formatCurrency(Number(order?.discount)) || 0,
          returns: formatCurrency(Number(refundPriceTotal)) || 0,
          realRevenue: formatCurrency((Number(order.totalPrice) - Number(order?.totalTaxPrice) + Number(order?.discount)) - Number(refundPriceTotal)) || 0,
        };
      });
      updateOrders.push({
        stt: '',
        code: '',
        customerName: 'Tổng',
        productQuantity: formatCurrency(totalQuantity) || 0,
        revenue: formatCurrency(totalPrice) || 0,
        vat:formatCurrency(totalVat) || 0,
        discount: formatCurrency(totalDiscount) || 0,
        returns: formatCurrency(totalReturn) || 0,
        realRevenue: formatCurrency(totalRealRevenue) || 0,
      });
      const headers = [
        'STT',
        'Mã đơn hàng',
        'Khách hàng',
        'SL sản phẩm',
        'Doanh thu',
        'VAT',
        'Chiết khấu',
        'Trả hàng',
        'Thực thu',
      ];
      const distributions = [0.05, 0.13, 0.13, 0.13, 0.1, 0.09, 0.12, 0.1, 0.15];
      const title = 'BÁO CÁO BÁN HÀNG';

      await this.exportPdfRepo.pdfHeader(doc, information);
      await this.generateReportInformation(doc, startDate, endDate, title, customerId, staffId);
      if (updateOrders.length > 0) await this.exportPdfRepo.pdfTable(doc, headers, updateOrders, distributions);
      this.exportPdfRepo.generateHr(doc, paperSize.height - paperSize.marginBottom - paperSize.marginTop);

      doc.end();

      const buffers: any = [];
      doc.on('data', buffers.push.bind(buffers));
      doc.on('end', () => {
        const pdfData = Buffer.concat(buffers);
        resolve(pdfData);
      });
    });
  };

  protected generatePurchaseOrderPdf = async (
    information: any,
    purchaseOrder: PurchaseOrder,
    purchaseOrderItems: PurchaseOrderProductItem[],
    debts: Debt[],
  ): Promise<Buffer> => {
    return new Promise(async (resolve) => {
      const doc = new PDFDocumentWithTables({
        size: paper,
        bufferPages: true,
        margins: { left: 40, right: 40, top: 20, bottom: 20 },
      });
      await this.exportPdfRepo.pdfHeader(doc, information);
      this.generatePurchaseOrderInformation(doc, purchaseOrder, information);
      let stt = 0;
      const loadPurchaseOrderItems = purchaseOrderItems.map((purchaseOrderItem: any) => {
        stt++;
        return {
          stt: stt,
          quantity: purchaseOrderItem.quantity,
          discount: purchaseOrderItem.discount,
          totalPrice: purchaseOrderItem.totalPrice,
          inputTax: purchaseOrderItem?.product?.inputTax
            ? purchaseOrderItem.product.inputTax.percentageNumber + '%'
            : '',
          sku: purchaseOrderItem?.productId ? purchaseOrderItem.product.sku : '',
          name: purchaseOrderItem?.productId ? purchaseOrderItem.product.name : '',
          costPrice: purchaseOrderItem?.productId ? purchaseOrderItem.product.costPrice : '',
        };
      });
      const headers = ['STT', 'Mã sản phẩm', 'Tên sản phẩm', 'Đơn vị', 'Số lượng', 'Đơn giá', 'Thuế', 'Thành tiền'];
      const distributions = [0.05, 0.15, 0.15, 0.1, 0.1, 0.12, 0.13, 0.2];
      await this.exportPdfRepo.pdfTable(doc, headers, loadPurchaseOrderItems, distributions);
      this.generatePurchaseOrderInTotal(doc, purchaseOrder, debts);

      this.exportPdfRepo.generateHr(doc, paperSize.height - paperSize.marginBottom - paperSize.marginTop);

      doc.end();

      const buffers: any = [];
      doc.on('data', buffers.push.bind(buffers));
      doc.on('end', () => {
        const pdfData = Buffer.concat(buffers);
        resolve(pdfData);
      });
    });
  };

  protected generateVoucherReportPdf = async (
    information: any,
    startDate: string,
    endDate: string,
    vouchers: Voucher[],
    customerId: string,
    staffId: string,
    supplierId: string,
  ): Promise<Buffer> => {
    return new Promise(async (resolve) => {
      const doc = new PDFDocumentWithTables({
        size: paper,
        bufferPages: true,
        margins: { left: 40, right: 40, top: 20, bottom: 20 },
      });

      const [paymentVoucher, receiptVoucher] = await Promise.all([
        this.voucherTypeRepo.findOne({ where: { key: VOUCHER_TYPES.paymentVoucher } }),
        this.voucherTypeRepo.findOne({ where: { key: VOUCHER_TYPES.receiptVoucher } }),
      ]);

      let stt = 0;
      const updateVouchers = vouchers.map((voucher: any) => {
        stt++;
        return {
          stt: stt,
          code: voucher.code,
          payer: voucher?.customerId
            ? voucher?.customer?.name
            : voucher?.staffId
            ? voucher?.staff?.name
            : voucher?.supplier?.name,
          payment:
            voucher.voucherTypeId === receiptVoucher?.id
              ? formatCurrency(Number(voucher?.value))
              : Number(voucher?.value) !== 0
              ? '-' + formatCurrency(Number(voucher?.value))
              : 0,
          date: new Date(voucher.recordedDate).toLocaleString(),
        };
      });
      const headers = ['STT', 'Mã phiếu thu / chi', 'Người nộp / nhận', 'Thu / chi', 'Thời gian'];
      const distributions = [0.1, 0.2, 0.3, 0.2, 0.3];
      const title = 'BÁO CÁO THU CHI';

      await this.exportPdfRepo.pdfHeader(doc, information);
      await this.generateReportInformation(doc, startDate, endDate, title, customerId, staffId, supplierId);
      if (updateVouchers.length > 0) await this.exportPdfRepo.pdfTable(doc, headers, updateVouchers, distributions);
      this.exportPdfRepo.generateHr(doc, paperSize.height - paperSize.marginBottom - paperSize.marginTop);

      doc.end();

      const buffers: any = [];
      doc.on('data', buffers.push.bind(buffers));
      doc.on('end', () => {
        const pdfData = Buffer.concat(buffers);
        resolve(pdfData);
      });
    });
  };

  protected generateSaleProductReportPdf = async (
    information: any,
    startDate: string,
    endDate: string,
    saleProductItems: SaleProductReportType[],
  ): Promise<Buffer> => {
    return new Promise(async (resolve) => {
      const doc = new PDFDocumentWithTables({
        size: paper,
        bufferPages: true,
        margins: { left: 40, right: 40, top: 20, bottom: 20 },
      });

      let totalQuantity = 0;
      let totalTotalPrice = 0;
      let totalReturnedQuantity = 0;
      let totalReturnedTotalPrice = 0;
      let totalFinalTotal = 0;
      let stt = 0;
      const products = saleProductItems.map((saleProductItem: any) => {
        const total = Number(saleProductItem?.totalPrice) - Number(saleProductItem?.returnedTotalPrice);
        totalQuantity += Number(saleProductItem?.quantity);
        totalTotalPrice += Number(saleProductItem?.totalPrice);
        totalReturnedQuantity += Number(saleProductItem?.returnedQuantity);
        totalReturnedTotalPrice += Number(saleProductItem?.returnedTotalPrice);
        totalFinalTotal += total;
        stt++;
        return {
          stt: stt.toString(),
          code: saleProductItem.code,
          productName: saleProductItem.name,
          quantity: formatCurrency(Number(saleProductItem?.quantity)) || 0,
          totalPrice: formatCurrency(Number(saleProductItem?.totalPrice)) || 0,
          returnedQuantity: formatCurrency(Number(saleProductItem?.returnedQuantity)) || 0,
          returnedTotalPrice: formatCurrency(Number(saleProductItem?.returnedTotalPrice)) || 0,
          finalTotal: (total < 0 ? '-' : '') + (formatCurrency(total) || 0),
        };
      });
      products.push({
        stt: '',
        code: '',
        productName: 'Tổng',
        quantity: formatCurrency(totalQuantity) || 0,
        totalPrice: formatCurrency(totalTotalPrice) || 0,
        returnedQuantity: formatCurrency(totalReturnedQuantity) || 0,
        returnedTotalPrice: formatCurrency(totalReturnedTotalPrice) || 0,
        finalTotal: (totalFinalTotal < 0 ? '-' : '') + (formatCurrency(totalFinalTotal) || '0'),
      });
      const headers = [
        'STT',
        'Mã sản phẩm',
        'Tên sản phẩm',
        'SL bán',
        'Doanh thu',
        'SL trả',
        'Giá trị trả',
        'Doanh thu thuần',
      ];
      const distributions = [0.075, 0.15, 0.175, 0.075, 0.15, 0.075, 0.15, 0.15];
      const title = 'BÁO CÁO HÀNG HÓA';

      await this.exportPdfRepo.pdfHeader(doc, information);
      await this.generateReportInformation(doc, startDate, endDate, title);
      if (products.length > 0) await this.exportPdfRepo.pdfTable(doc, headers, products, distributions);
      this.exportPdfRepo.generateHr(doc, paperSize.height - paperSize.marginBottom - paperSize.marginTop);

      doc.end();

      const buffers: any = [];
      doc.on('data', buffers.push.bind(buffers));
      doc.on('end', () => {
        const pdfData = Buffer.concat(buffers);
        resolve(pdfData);
      });
    });
  };

  protected generateCustomerDebtReportPdf = async (
    information: any,
    startDate: string,
    endDate: string,
    customerDebts: CustomerDebtType,
  ): Promise<Buffer> => {
    return new Promise(async (resolve) => {
      const doc = new PDFDocumentWithTables({
        size: paper,
        bufferPages: true,
        margins: { left: 40, right: 40, top: 20, bottom: 20 },
      });

      let stt = 0;
      const updateVouchers = Object.values(customerDebts).map((item) => {
        stt++;

        const ward = item.ward ? item.ward.name : '';
        const district = item.ward && item.ward.district ? item.ward.district.name : '';
        const province =
          item.ward && item.ward.district && item.ward.district.province ? item.ward.district.province.name : '';
        const address = ward && district && province ? ward + ', ' + district + ', ' + province : '';
        return {
          stt: stt,
          name: item.name,
          phoneNumber: item.phoneNumber,
          // address: item.address ? item.address.toString() : address,
          beforeDebt: formatCurrency(Number(item.beforeDebt)) || 0,
          increaseDebt: formatCurrency(Number(item.increaseDebt)) || 0,
          decreaseDebt: formatCurrency(Number(item.decreaseDebt)) || 0,
          afterDebt: formatCurrency(Number(item.afterDebt)) || 0,
        };
      });
      const headers = [
        'STT',
        'Tên khách hàng',
        'Số điện thoại',
        'Nợ đầu kỳ',
        'Nợ tăng trong kỳ',
        'Nợ giảm trong kỳ',
        'Nợ cuối kỳ',
      ];
      const distributions = [0.075, 0.15, 0.15, 0.125, 0.175, 0.2, 0.125];
      const title = 'BÁO CÁO CÔNG NỢ KHÁCH HÀNG';

      await this.exportPdfRepo.pdfHeader(doc, information);
      await this.generateReportInformation(doc, startDate, endDate, title);
      if (updateVouchers.length > 0) await this.exportPdfRepo.pdfTable(doc, headers, updateVouchers, distributions);
      this.exportPdfRepo.generateHr(doc, paperSize.height - paperSize.marginBottom - paperSize.marginTop);

      doc.end();

      const buffers: any = [];
      doc.on('data', buffers.push.bind(buffers));
      doc.on('end', () => {
        const pdfData = Buffer.concat(buffers);
        resolve(pdfData);
      });
    });
  };

  protected generateFinancialReportPdf = async (
    information: any,
    startDate: string,
    endDate: string,
    result: any,
  ): Promise<Buffer> => {
    return new Promise(async (resolve) => {
      const doc = new PDFDocumentWithTables({
        size: paper,
        bufferPages: true,
        margins: { left: 40, right: 40, top: 20, bottom: 20 },
      });
      const values = Object.values(result);
      const names = [
        'I. Doanh thu bán hàng (1 + 2 + 3 - 4)',
        '     1. Tiền hàng thực bán (1a + 1b)',
        '           a. Tiền bán hàng ra',
        '           b. Tiền bán hàng trả lại',
        '     2. Thuế GTGT',
        '     3. Phí giao hàng',
        '     4. Chiết khấu',
        'II. Chi phí bán hàng (1 + 2)',
        '     1. Chi phí nhập hàng',
        '     2. Phí giao hàng của đối tác',
        'III. Thu nhập khác',
        'IV. Chi phí khác',
        'Lợi nhuận (I + III - II - IV)',
      ];
      const financialData: any[] = [];
      names.forEach((name: string, index: number) => {
        const data = {
          name: name,
          value: formatCurrency(Number(values[index])) || 0,
        };
        financialData.push(data);
      });
      financialData[financialData.length - 1].value = formatCurrency(result.saleRevenue + result.orderIncome - result.salesExpenses - result.orderCosts);
      const headers = ['Chỉ tiêu báo cáo', 'Kỳ hiện tại'];
      const distributions = [0.5, 0.5];
      const title = 'BÁO CÁO KẾT QUẢ TÀI CHÍNH KINH DOANH';

      await this.exportPdfRepo.pdfHeader(doc, information);
      await this.generateReportInformation(doc, startDate, endDate, title);
      await this.exportPdfRepo.pdfTable(doc, headers, financialData, distributions);
      this.exportPdfRepo.generateHr(doc, paperSize.height - paperSize.marginBottom - paperSize.marginTop);

      doc.end();

      const buffers: any = [];
      doc.on('data', buffers.push.bind(buffers));
      doc.on('end', () => {
        const pdfData = Buffer.concat(buffers);
        resolve(pdfData);
      });
    });
  };

  protected generateOrderInformation(doc: PDFDocumentWithTables, order: any) {
    // margin top + header height
    let reportInformationTop = doc.y + 20;
    const lableWidth = 80;
    doc
      .fontSize(13)
      .font(FONT_BOLD_PATH)
      .text('ĐƠN HÀNG', paperSize.usableWidth / 2, reportInformationTop, { width: lableWidth, align: 'center' });
    reportInformationTop = doc.y + 20;
    doc
      .fontSize(10)
      .font(FONT_BOLD_PATH)
      .text('Người nhận:', paperSize.marginLeft, reportInformationTop, { width: lableWidth, align: 'right' })
      .text('Điện thoại:', paperSize.marginLeft, reportInformationTop + newLineHeight, {
        width: lableWidth,
        align: 'right',
      })
      .text('Email:', paperSize.marginLeft, reportInformationTop + newLineHeight * 2, {
        width: lableWidth,
        align: 'right',
      })
      .text('Địa chỉ giao:', paperSize.marginLeft, reportInformationTop + newLineHeight * 3, {
        width: lableWidth,
        align: 'right',
      })
      .text('Mã đơn hàng:', (paperSize.usableWidth / 3) * 2, reportInformationTop, {
        width: lableWidth,
        align: 'right',
      })
      .text('Ngày tạo:', (paperSize.usableWidth / 3) * 2, reportInformationTop + newLineHeight, {
        width: lableWidth,
        align: 'right',
      })
      .text('Ghi chú:', paperSize.marginLeft, reportInformationTop + newLineHeight * 5, {
        width: lableWidth,
        align: 'right',
      });
    doc
      .fontSize(10)
      .font(FONT_NORMAL_PATH)
      .text(order.customer.name, paperSize.marginLeft + lableWidth + 5, reportInformationTop)
      .text(order.customer.phoneNumber, paperSize.marginLeft + lableWidth + 5, reportInformationTop + newLineHeight * 1)
      .text(order.customer.email, paperSize.marginLeft + lableWidth + 5, reportInformationTop + newLineHeight * 2)
      .text(order.note === '' ? order.customer.address : order.note, paperSize.marginLeft + lableWidth + 5, reportInformationTop + newLineHeight * 3)
      .text(order.code, (paperSize.usableWidth / 3) * 2 + lableWidth + 5, reportInformationTop)
      .text(
        order.createdAt.toLocaleDateString(),
        (paperSize.usableWidth / 3) * 2 + lableWidth + 5,
        reportInformationTop + newLineHeight,
      )
      .text('', paperSize.marginLeft + lableWidth + 5, reportInformationTop + newLineHeight * 5)
      .moveDown(2);
  }

  protected generatePurchaseOrderInformation(doc: PDFDocumentWithTables, purchaseOrder: any, information: any): void {
    // margin top + header height
    let reportInformationTop = doc.y + 20;
    const lableWidth = 80;
    doc
      .fontSize(13)
      .font(FONT_BOLD_PATH)
      .text('ĐƠN NHẬP HÀNG', paperSize.usableWidth / 2 - 30, reportInformationTop, {
        width: lableWidth + 30,
        align: 'center',
      });
    reportInformationTop = doc.y + 20;
    doc
      .fontSize(10)
      .font(FONT_BOLD_PATH)
      .text('Nhà cung cấp:', paperSize.marginLeft, reportInformationTop, { width: lableWidth, align: 'right' })
      .text('Điện thoại:', paperSize.marginLeft, reportInformationTop + newLineHeight, {
        width: lableWidth,
        align: 'right',
      })
      .text('Email:', paperSize.marginLeft, reportInformationTop + newLineHeight * 2, {
        width: lableWidth,
        align: 'right',
      })
      .text('Địa chỉ giao:', paperSize.marginLeft, reportInformationTop + newLineHeight * 3, {
        width: lableWidth,
        align: 'right',
      })
      .text('Mã đơn nhập hàng:', (paperSize.usableWidth / 3) * 2 - 20, reportInformationTop, {
        width: lableWidth + 20,
        align: 'right',
      })
      .text('Ngày tạo:', (paperSize.usableWidth / 3) * 2, reportInformationTop + newLineHeight, {
        width: lableWidth,
        align: 'right',
      })
      .text('Ngày nhập hàng:', (paperSize.usableWidth / 3) * 2, reportInformationTop + newLineHeight * 2, {
        width: lableWidth,
        align: 'right',
      })
      .text('Ghi chú:', paperSize.marginLeft, reportInformationTop + newLineHeight * 5, {
        width: lableWidth,
        align: 'right',
      });
    doc
      .fontSize(10)
      .font(FONT_NORMAL_PATH)
      .text(purchaseOrder.supplier.name, paperSize.marginLeft + lableWidth + 5, reportInformationTop)
      .text(
        purchaseOrder.supplier.mobile,
        paperSize.marginLeft + lableWidth + 5,
        reportInformationTop + newLineHeight * 1,
      )
      .text(
        purchaseOrder.supplier.email,
        paperSize.marginLeft + lableWidth + 5,
        reportInformationTop + newLineHeight * 2,
      )
      .text(information.address, paperSize.marginLeft + lableWidth + 5, reportInformationTop + newLineHeight * 3)
      .text(purchaseOrder.code, (paperSize.usableWidth / 3) * 2 + lableWidth + 5, reportInformationTop)
      .text(
        purchaseOrder.createdAt.toLocaleDateString(),
        (paperSize.usableWidth / 3) * 2 + lableWidth + 5,
        reportInformationTop + newLineHeight,
      )
      .text(
        purchaseOrder.importDate ? purchaseOrder.importDate.toLocaleDateString() : '',
        (paperSize.usableWidth / 3) * 2 + lableWidth + 5,
        reportInformationTop + newLineHeight * 2,
      )
      .text(purchaseOrder.note, paperSize.marginLeft + lableWidth + 5, reportInformationTop + newLineHeight * 5)
      .moveDown(2);
  }

  async generateReportInformation(
    doc: PDFDocumentWithTables,
    startDate: string,
    endDate: string,
    title: string,
    customerId?: string,
    staffId?: string,
    supplierId?: string,
  ) {
    // margin top + header height
    let reportInformationTop = doc.y + 20;
    const lableWidth = 80;
    doc
      .fontSize(13)
      .font(FONT_BOLD_PATH)
      .text(title, paperSize.usableWidth / 2 - 60, reportInformationTop, {
        width: 180,
        align: 'center',
      });
    reportInformationTop = doc.y + 20;
    doc
      .fontSize(10)
      .font(FONT_BOLD_PATH)
      .text('Ngày tạo:', paperSize.marginLeft, reportInformationTop, { width: lableWidth, align: 'right' })
      .text('Ngày bán:', paperSize.marginLeft, reportInformationTop + newLineHeight, {
        width: lableWidth,
        align: 'right',
      });
    if (staffId) {
      const staff = await this.userRepo.findOne({ where: { id: staffId } });
      if (staff)
        doc
          .text('Nhân viên tạo:', (paperSize.usableWidth / 3) * 2, reportInformationTop, {
            width: lableWidth,
            align: 'right',
          })
          .font(FONT_NORMAL_PATH)
          .text(staff?.name ?? '-', (paperSize.usableWidth / 3) * 2 + lableWidth + 5, reportInformationTop);
    }
    if (customerId) {
      const customer = await this.customerRepo.findOne({ where: { id: customerId } });
      if (customer)
        doc
          .font(FONT_BOLD_PATH)
          .text('Khách hàng:', (paperSize.usableWidth / 3) * 2, reportInformationTop + newLineHeight, {
            width: lableWidth,
            align: 'right',
          })
          .font(FONT_NORMAL_PATH)
          .text(
            customer?.name ?? '-',
            (paperSize.usableWidth / 3) * 2 + lableWidth + 5,
            reportInformationTop + newLineHeight,
          );
    }
    if (supplierId) {
      const supplier = await this.supplierRepo.findOne({ where: { id: supplierId } });
      if (supplier)
        doc
          .font(FONT_BOLD_PATH)
          .text('Nhà cung cấp:', (paperSize.usableWidth / 3) * 2, reportInformationTop + newLineHeight * 2, {
            width: lableWidth,
            align: 'right',
          })
          .font(FONT_NORMAL_PATH)
          .text(
            supplier?.name ?? '-',
            (paperSize.usableWidth / 3) * 2 + lableWidth + 5,
            reportInformationTop + newLineHeight * 2,
          );
    }
    doc
      .font(FONT_NORMAL_PATH)
      .text(new Date().toLocaleString(), paperSize.marginLeft + lableWidth + 5, reportInformationTop)
      .text(
        `Từ ngày ${startDate} đến ${endDate}`,
        paperSize.marginLeft + lableWidth + 5,
        reportInformationTop + newLineHeight * 1,
      )
      .moveDown(2);
  }

  protected generateOrderInTotal(doc: PDFDocumentWithTables, order: any, debts: Debt[], isCustomerOrder: boolean) {
    // margin top + header height
    let reportInTotalTop = doc.y;
    const lableWidth = 80;
    const orderDebtIndex = debts.findIndex((debt) => debt.orderId === order.id);
    const deposit: number = orderDebtIndex !== -1 ? order.totalPrice - debts[orderDebtIndex].debtAmount : 0;
    let oldDebt = 0;
    if (orderDebtIndex !== -1) {
      oldDebt = debts
        .filter((debt, index) => index !== orderDebtIndex)
        .reduce((acc, curr) => Number(acc) + Number(curr.debtAmount), 0);
    }
    const totalDebt = Number(order.totalPrice) - Number(deposit) + Number(oldDebt);

    const startX = paperSize.usableWidth - paperSize.marginRight - paperSize.usableWidth * 0.2 - 5;
    doc
      .fontSize(10)
      .font(FONT_BOLD_PATH)
      .text('VAT:', startX, reportInTotalTop, { width: lableWidth, align: 'right' })
      .text('Giao hàng:', startX, reportInTotalTop + newLineHeight, { width: lableWidth, align: 'right' })
      .text('Tổng đơn:', startX, reportInTotalTop + newLineHeight*2, { width: lableWidth, align: 'right' })
      .text('Cọc:', startX, reportInTotalTop + newLineHeight*3, {
        width: lableWidth,
        align: 'right',
      });

    !isCustomerOrder && doc
      .text('Nợ cũ:', startX, reportInTotalTop + newLineHeight * 4, {
        width: lableWidth,
        align: 'right',
      });
    doc
      .text(isCustomerOrder ? 'Tạm tính:' : 'Tổng nợ:', startX, reportInTotalTop + newLineHeight * (!isCustomerOrder ? 5 : 4), {
        width: lableWidth,
        align: 'right',
      })
      .font(FONT_NORMAL_PATH)
      .text(formatCurrency(Number(order.totalTaxPrice)) || '0', startX + lableWidth + 5, reportInTotalTop)
      .text(formatCurrency(Number(order.shippingFee)) || '0', startX + lableWidth + 5, reportInTotalTop + newLineHeight)
      .text(formatCurrency(Number(order.totalPrice)) || '0', startX + lableWidth + 5, reportInTotalTop + newLineHeight*2)
      .text(formatCurrency(deposit) || '0', startX + lableWidth + 5, reportInTotalTop + newLineHeight * 3);
    !isCustomerOrder && doc
      .text(formatCurrency(oldDebt) || '0', startX + lableWidth + 5, reportInTotalTop + newLineHeight * 4);
    doc
      .text(formatCurrency(totalDebt) || '0', startX + lableWidth + 5, reportInTotalTop + newLineHeight * (!isCustomerOrder ? 5 : 4))
      .moveDown(2);
    reportInTotalTop = doc.y + 20;
    doc
      .fontSize(10)
      .font(FONT_BOLD_PATH)
      .text('Người bán hàng', (paperSize.usableWidth / 4) * 3, reportInTotalTop, { width: lableWidth, align: 'center' })
      .text(order?.staff?.name || '', (paperSize.usableWidth / 4) * 3, reportInTotalTop + newLineHeight * 5, {
        width: lableWidth,
        align: 'center',
      })
      .text('Người mua hàng', paperSize.usableWidth / 4, reportInTotalTop, { width: lableWidth, align: 'center' })
      .text(order?.customer?.name, paperSize.usableWidth / 4, reportInTotalTop + newLineHeight * 5, {
        width: lableWidth,
        align: 'center',
      })
      .font(FONT_NORMAL_ITALIC_PATH)
      .text('(Ký, ghi rõ họ tên)', (paperSize.usableWidth / 4) * 3, reportInTotalTop + newLineHeight, {
        width: lableWidth,
        align: 'center',
      })
      .text('(Ký, ghi rõ họ tên)', paperSize.usableWidth / 4, reportInTotalTop + newLineHeight, {
        width: lableWidth,
        align: 'center',
      });
  }

  protected generatePurchaseOrderInTotal(doc: PDFDocumentWithTables, purchaseOrder: any, debts: Debt[]) {
    // margin top + header height
    let reportInTotalTop = doc.y - 10;
    const lableWidth = 80;
    // const orderDebtIndex = debts.findIndex((debt) => debt.orderId === purchaseOrder.id);
    // const deposit: number = orderDebtIndex !== -1 ? purchaseOrder.totalPrice - debts[orderDebtIndex].debtAmount : 0;
    // let oldDebt = 0;
    // if (orderDebtIndex !== -1) {
    //   oldDebt = debts
    //     .filter((debt, index) => index !== orderDebtIndex)
    //     .reduce((acc, curr) => Number(acc) + Number(curr.debtAmount), 0);
    // }
    // const totalDebt = Number(purchaseOrder.totalPrice) - Number(deposit) + Number(oldDebt);
    const total = Number(purchaseOrder.totalPrice) + Number(purchaseOrder.totalTaxPrice);
    const startX = paperSize.usableWidth - paperSize.marginRight - paperSize.usableWidth * 0.2 - 5;
    doc
      .fontSize(10)
      .font(FONT_BOLD_PATH)
      .text('Tổng số lượng:', startX, reportInTotalTop, { width: lableWidth, align: 'right' })
      .text('Tổng tiền hàng:', startX, reportInTotalTop + newLineHeight, {
        width: lableWidth,
        align: 'right',
      })
      .text('VAT:', startX, reportInTotalTop + newLineHeight * 2, {
        width: lableWidth,
        align: 'right',
      })
      .text('Tổng tiền:', startX, reportInTotalTop + newLineHeight * 3, {
        width: lableWidth,
        align: 'right',
      })
      .font(FONT_NORMAL_PATH)
      .text(purchaseOrder.quantityTotal, startX + lableWidth + 5, reportInTotalTop)
      .text(purchaseOrder.totalPrice, startX + lableWidth + 5, reportInTotalTop + newLineHeight * 1)
      .text(purchaseOrder.totalTaxPrice, startX + lableWidth + 5, reportInTotalTop + newLineHeight * 2)
      .text(total.toString(), startX + lableWidth + 5, reportInTotalTop + newLineHeight * 3)
      .moveDown(2);
    reportInTotalTop = doc.y + 20;
    doc
      .fontSize(10)
      .font(FONT_BOLD_PATH)
      .text('Người nhận hàng', (paperSize.usableWidth / 4) * 3, reportInTotalTop, {
        width: lableWidth,
        align: 'center',
      })
      .text(purchaseOrder.staff.name, (paperSize.usableWidth / 4) * 3, reportInTotalTop + newLineHeight * 5, {
        width: lableWidth,
        align: 'center',
      })
      .text('Nhà cung cấp', paperSize.usableWidth / 4, reportInTotalTop, { width: lableWidth, align: 'center' })
      .text(purchaseOrder.supplier.name, paperSize.usableWidth / 4, reportInTotalTop + newLineHeight * 5, {
        width: lableWidth,
        align: 'center',
      })
      .font(FONT_NORMAL_ITALIC_PATH)
      .text('(Ký, ghi rõ họ tên)', (paperSize.usableWidth / 4) * 3, reportInTotalTop + newLineHeight, {
        width: lableWidth,
        align: 'center',
      })
      .text('(Ký, ghi rõ họ tên)', paperSize.usableWidth / 4, reportInTotalTop + newLineHeight, {
        width: lableWidth,
        align: 'center',
      });
  }
}
export default ExportPdfController;
