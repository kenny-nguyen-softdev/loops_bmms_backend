import { Router } from 'express';
import StatisticController from '../app/controllers/statistic.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';

class StatisticRoute {
  router = Router();
  statisticController: StatisticController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.statisticController = new StatisticController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.initializeRoutes();
  }
  initializeRoutes() {
    this.router
      .route('/revenue-reports')
      .post(this.authMiddleware.handler(), this.statisticController.revenueReport.bind(this.statisticController));
    this.router
      .route('/shipping-reports')
      .post(this.authMiddleware.handler(), this.statisticController.shippingReport.bind(this.statisticController));
    this.router
      .route('/returning-reports')
      .post(this.authMiddleware.handler(), this.statisticController.returningReport.bind(this.statisticController));
    this.router
      .route('/order-payment-reports')
      .post(this.authMiddleware.handler(), this.statisticController.orderPaymentReport.bind(this.statisticController));
    this.router
      .route('/order-reports')
      .post(this.authMiddleware.handler(), this.statisticController.orderReport.bind(this.statisticController));
    this.router
      .route('/purchase-order-reports')
      .post(this.authMiddleware.handler(), this.statisticController.purchaseOrderReport.bind(this.statisticController));
    this.router
      .route('/purchase-order-payment-reports')
      .post(this.authMiddleware.handler(), this.statisticController.purchaseOrderPaymentReport.bind(this.statisticController));
    this.router
      .route('/purchase-order-inventory-reports')
      .post(this.authMiddleware.handler(), this.statisticController.inventoryReport.bind(this.statisticController));
    this.router
      .route('/profit-and-loss-reports')
      .post(this.authMiddleware.handler(), this.statisticController.profitAndLossReport.bind(this.statisticController));
    this.router
      .route('/cash-book-reports')
      .post(this.authMiddleware.handler(), this.statisticController.cashBookReport.bind(this.statisticController));
    this.router
      .route('/customer-debt-reports')
      .post(this.authMiddleware.handler(), this.statisticController.customerDebtReport.bind(this.statisticController));
    this.router
      .route('/supplier-debt-reports')
      .post(this.authMiddleware.handler(), this.statisticController.supplierDebtReport.bind(this.statisticController));
    this.router
      .route('/customer-buy-products-over-time-reports')
      .post(this.authMiddleware.handler(), this.statisticController.customerBuyProductsOverTimeReport.bind(this.statisticController));
    this.router
      .route('/customer-buy-products-by-product-reports')
      .post(this.authMiddleware.handler(), this.statisticController.customerBuyProductsByProductReport.bind(this.statisticController));
  }
}
export default new StatisticRoute().router;
