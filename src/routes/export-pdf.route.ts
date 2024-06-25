import { Router } from 'express';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import ExportPdfController from '../app/controllers/export-pdf.controller';

class ExportPdfRoute {
  router = Router();
  exportPdfController: ExportPdfController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.exportPdfController = new ExportPdfController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.initializeRoutes();
  }
  initializeRoutes() {
    this.router
      .route('/sale-order-pdf')
      .post(this.authMiddleware.handler(), this.exportPdfController.saleOrderPdf.bind(this.exportPdfController));
    this.router
      .route('/purchase-order-pdf')
      .post(this.authMiddleware.handler(), this.exportPdfController.purchaseOrderPdf.bind(this.exportPdfController));
    this.router
      .route('/sale-report-pdf')
      .post(this.authMiddleware.handler(), this.exportPdfController.SaleReportPdf.bind(this.exportPdfController));
    this.router
      .route('/voucher-report-pdf')
      .post(this.authMiddleware.handler(), this.exportPdfController.voucherReportPdf.bind(this.exportPdfController));
    this.router
      .route('/sale-product-report-pdf')
      .post(this.authMiddleware.handler(), this.exportPdfController.saleProductReportPdf.bind(this.exportPdfController));
    this.router
      .route('/customer-debt-report-pdf')
      .post(this.authMiddleware.handler(), this.exportPdfController.customerDebtReportPdf.bind(this.exportPdfController));
    this.router
      .route('/customer-debt-report-pdf')
      .post(this.authMiddleware.handler(), this.exportPdfController.customerDebtReportPdf.bind(this.exportPdfController));
    this.router
      .route('/financial-report-pdf')
      .post(this.authMiddleware.handler(), this.exportPdfController.financialReportPdf.bind(this.exportPdfController));
  }
}
export default new ExportPdfRoute().router;
