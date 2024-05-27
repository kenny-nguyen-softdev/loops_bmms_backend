import axios from 'axios';
import { DEBT_TYPES, PAPER_SIZES } from '../../constant';
import { CellOptions, PDFDocumentWithTables, PDFTable } from '../../utils/pdfkit-table';
import { ErrorResponse, SuccessResponse } from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import OrderRepository from '../repositories/Order/order.repository';
import {
  Combo,
  Customer,
  Debt,
  Order,
  OrderItem,
  Product,
  PurchaseOrder,
  PurchaseOrderProductItem,
  Service,
  Status,
  Supplier,
  Tax,
  User,
} from '../../models';
import { FindOptions } from 'sequelize';
import OrderItemRepository from '../repositories/OrderItem/order-item.repository';
import DebtRepository from '../repositories/Debt/debt.repository';
import { Op } from 'sequelize';
import DebtTypeRepository from '../repositories/DebtType/debt-type.repository';
import PurchaseOrderRepository from '../repositories/PurchaseOrder/purchase-order.repository';
import PurchaseOrderProductItemRepository from '../repositories/PurchaseOrderProductItem/purchase-order-product-item.repository';

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
  constructor() {
    this.orderRepository = new OrderRepository();
    this.orderItemRepository = new OrderItemRepository();
    this.debtRepository = new DebtRepository();
    this.debtTypeRepository = new DebtTypeRepository();
    this.purchaseOrderRepository = new PurchaseOrderRepository();
    this.purchaseOrderItemRepository = new PurchaseOrderProductItemRepository();
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
      const debts: Debt[] = [];
      if (allDebts.length > 0) debts.push(allDebts[0]);
      for (let i = 1; i <= allDebts.length - 1; i++) {
        if (allDebts[i].customerId !== allDebts[i - 1].customerId) debts.push(allDebts[i]);
      }
      const pdf = await this.generateOrderPdf(storeInformation, order, orderItems, debts);

      res.setHeader('Content-Type', 'application/pdf');
      res.setHeader('Content-Disposition', 'attachment; filename="report.pdf"');
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
            include:[
              {
                model: Tax,
                as:'inputTax'
              }
            ]
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
      res.setHeader('Content-Disposition', 'attachment; filename="report.pdf"');
      res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
      res.send(pdf);
      // return new SuccessResponse(res, purchaseOrderItems);
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
      await this.generateHeader(doc, information);
      this.generateOrderInformation(doc, order);
      await this.generateOrderTable(doc, orderItems);
      this.generateOrderInTotal(doc, order, debts);

      this.generateHr(doc, paperSize.height - paperSize.marginBottom - paperSize.marginTop);

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
      await this.generateHeader(doc, information);
      this.generatePurchaseOrderInformation(doc, purchaseOrder, information);
      await this.generatePurchaseOrderTable(doc, purchaseOrderItems);
      this.generatePurchaseOrderInTotal(doc, purchaseOrder, debts);

      this.generateHr(doc, paperSize.height - paperSize.marginBottom - paperSize.marginTop);

      doc.end();

      const buffers: any = [];
      doc.on('data', buffers.push.bind(buffers));
      doc.on('end', () => {
        const pdfData = Buffer.concat(buffers);
        resolve(pdfData);
      });
    });
  };
  protected async generateHeader(doc: PDFDocumentWithTables, information: any) {
    const imageResponse = await axios.get(information.logo, { responseType: 'arraybuffer' });
    const headerHeight = 60;
    doc
      .image(imageResponse.data, paperSize.marginLeft, paperSize.marginTop, { height: headerHeight })
      .fillColor('#efefef')
      .rect(paperSize.width / 2, paperSize.marginTop + 5, paperSize.usableWidth / 2, headerHeight - 5)
      .fill()
      .fillColor('#444444')
      .fontSize(12)
      .font(FONT_BOLD_PATH)
      .text(information.name, paperSize.width / 2, paperSize.marginTop + 10, { align: 'center' })
      .fontSize(8)
      .text('Địa chỉ:', paperSize.width / 2, paperSize.marginTop + 24, { align: 'right', width: 65 })
      .text('Điện thoại:', paperSize.width / 2, paperSize.marginTop + 36, { align: 'right', width: 65 })
      .text('Email:', paperSize.width / 2, paperSize.marginTop + 48, { align: 'right', width: 65 })
      // .text('Mã đơn hàng:', paperSize.width / 2, paperSize.marginTop + 48, { align: 'right', width: 65 })
      .font(FONT_NORMAL_PATH)
      .text(information.address, paperSize.width / 2 + 70, paperSize.marginTop + 24)
      .text(information.phoneNumber, paperSize.width / 2 + 70, paperSize.marginTop + 36)
      .text(information.email, paperSize.width / 2 + 70, paperSize.marginTop + 48)
      // .text(order.code, paperSize.width / 2 + 70, paperSize.marginTop + 48)
      .moveDown();
    this.generateHr(doc, paperSize.marginTop + headerHeight);
  }
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
      .text(order.customer.address, paperSize.marginLeft + lableWidth + 5, reportInformationTop + newLineHeight * 3)
      .text(order.code, (paperSize.usableWidth / 3) * 2 + lableWidth + 5, reportInformationTop)
      .text(
        order.createdAt.toLocaleDateString(),
        (paperSize.usableWidth / 3) * 2 + lableWidth + 5,
        reportInformationTop + newLineHeight,
      )
      .text(order.note, paperSize.marginLeft + lableWidth + 5, reportInformationTop + newLineHeight * 5)
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
  protected async generateOrderTable(doc: PDFDocumentWithTables, orderItems: any[]) {
    let stt = 0;
    const updateOrderItems = orderItems.map((orderItem: any) => {
      stt++;
      return {
        stt: stt,
        quantity: orderItem.quantity,
        discount: orderItem.discount,
        totalPrice: orderItem.totalPrice,
        sku: orderItem?.productId
          ? orderItem.product.sku
          : orderItem?.comboId
          ? orderItem.combo.sku
          : orderItem.service.sku,
        name: orderItem?.productId
          ? orderItem.product.name
          : orderItem?.comboId
          ? orderItem.combo.name
          : orderItem.service.name,
        salePrice: orderItem?.productId
          ? orderItem.product.salePrice
          : orderItem?.comboId
          ? orderItem.combo.salePrice
          : orderItem.service.salePrice,
      };
    });
    const table: PDFTable = {
      headers: ['STT', 'Mã sản phẩm', 'Tên sản phẩm', 'Đơn vị', 'Số lượng', 'Đơn giá', 'Chiết khấu', 'Thành tiền'],
      rows: [
        { dataIndex: 'stt' },
        { dataIndex: 'sku' },
        { dataIndex: 'name' },
        { dataIndex: 'unit' },
        { dataIndex: 'quantity' },
        { dataIndex: 'salePrice' },
        { dataIndex: 'discount' },
        { dataIndex: 'totalPrice' },
      ],
      items: updateOrderItems,
    };
    (
      await doc.table(table, {
        prepareHeader: () => doc.font(FONT_BOLD_PATH).fontSize(10),
        prepareRow: () => doc.font(FONT_NORMAL_PATH).fontSize(9),
        columnWidthsDistribution: [0.05, 0.15, 0.15, 0.1, 0.1, 0.12, 0.13, 0.2],
        isFlexibleHeight: true,
        columnSpacing: 5,
      })
    ).moveDown();
  }
  protected async generatePurchaseOrderTable(doc: PDFDocumentWithTables, purchaseOrderItems: any[]) {
    let stt = 0;
    const loadPurchaseOrderItems = purchaseOrderItems.map((purchaseOrderItem: any) => {
      stt++;
      return {
        stt: stt,
        quantity: purchaseOrderItem.quantity,
        discount: purchaseOrderItem.discount,
        totalPrice: purchaseOrderItem.totalPrice,
        inputTax: purchaseOrderItem?.product?.inputTax ? purchaseOrderItem.product.inputTax.percentageNumber+'%' : '',
        sku: purchaseOrderItem?.productId ? purchaseOrderItem.product.sku : '',
        name: purchaseOrderItem?.productId ? purchaseOrderItem.product.name : '',
        costPrice: purchaseOrderItem?.productId ? purchaseOrderItem.product.costPrice : '',
      };
    });
    const table: PDFTable = {
      headers: ['STT', 'Mã sản phẩm', 'Tên sản phẩm', 'Đơn vị', 'Số lượng', 'Đơn giá', 'Thuế', 'Thành tiền'],
      rows: [
        { dataIndex: 'stt' },
        { dataIndex: 'sku' },
        { dataIndex: 'name' },
        { dataIndex: 'unit' },
        { dataIndex: 'quantity' },
        { dataIndex: 'costPrice' },
        { dataIndex: 'inputTax' },
        { dataIndex: 'totalPrice' },
      ],
      items: loadPurchaseOrderItems,
    };
    (
      await doc.table(table, {
        prepareHeader: () => doc.font(FONT_BOLD_PATH).fontSize(10),
        prepareRow: () => doc.font(FONT_NORMAL_PATH).fontSize(9),
        columnWidthsDistribution: [0.05, 0.15, 0.15, 0.1, 0.1, 0.12, 0.13, 0.2],
        isFlexibleHeight: true,
        columnSpacing: 5,
      })
    ).moveDown();
  }
  protected generateOrderInTotal(doc: PDFDocumentWithTables, order: any, debts: Debt[]) {
    // margin top + header height
    let reportInTotalTop = doc.y - 10;
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
      .text('Tổng đơn:', startX, reportInTotalTop, { width: lableWidth, align: 'right' })
      .text('Cọc:', startX, reportInTotalTop + newLineHeight, {
        width: lableWidth,
        align: 'right',
      })
      .text('Nợ cũ:', startX, reportInTotalTop + newLineHeight * 2, {
        width: lableWidth,
        align: 'right',
      })
      .text('Tổng nợ:', startX, reportInTotalTop + newLineHeight * 3, {
        width: lableWidth,
        align: 'right',
      })
      .font(FONT_NORMAL_PATH)
      .text(order.totalPrice, startX + lableWidth + 5, reportInTotalTop)
      .text(deposit.toString(), startX + lableWidth + 5, reportInTotalTop + newLineHeight * 1)
      .text(oldDebt.toString(), startX + lableWidth + 5, reportInTotalTop + newLineHeight * 2)
      .text(totalDebt.toString(), startX + lableWidth + 5, reportInTotalTop + newLineHeight * 3)
      .moveDown(2);
    // this.generateHr(doc, doc.y - 5);
    reportInTotalTop = doc.y + 20;
    doc
      .fontSize(10)
      .font(FONT_BOLD_PATH)
      .text('Người bán hàng', (paperSize.usableWidth / 4) * 3, reportInTotalTop, { width: lableWidth, align: 'center' })
      .text(order.staff.name, (paperSize.usableWidth / 4) * 3, reportInTotalTop + newLineHeight * 5, {
        width: lableWidth,
        align: 'center',
      })
      .text('Người mua hàng', paperSize.usableWidth / 4, reportInTotalTop, { width: lableWidth, align: 'center' })
      .text(order.customer.name, paperSize.usableWidth / 4, reportInTotalTop + newLineHeight * 5, {
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
    const orderDebtIndex = debts.findIndex((debt) => debt.orderId === purchaseOrder.id);
    const deposit: number = orderDebtIndex !== -1 ? purchaseOrder.totalPrice - debts[orderDebtIndex].debtAmount : 0;
    let oldDebt = 0;
    if (orderDebtIndex !== -1) {
      oldDebt = debts
        .filter((debt, index) => index !== orderDebtIndex)
        .reduce((acc, curr) => Number(acc) + Number(curr.debtAmount), 0);
    }
    const totalDebt = Number(purchaseOrder.totalPrice) - Number(deposit) + Number(oldDebt);
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
    // this.generateHr(doc, doc.y - 5);
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
  protected generateHr(doc: PDFDocumentWithTables, y: number, lineFrom: number = paperSize.marginRight) {
    doc
      .strokeColor('#aaaaaa')
      .lineWidth(1)
      .moveTo(lineFrom, y)
      .lineTo(paperSize.width - paperSize.marginRight, y)
      .stroke()
      .moveDown();
  }
}
export default ExportPdfController;
