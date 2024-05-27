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
  }
}
export default new ExportPdfRoute().router;
