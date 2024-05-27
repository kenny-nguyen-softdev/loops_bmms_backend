import { Router } from 'express';
import OrderPaymentController from '../app/controllers/order-payment.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createOrderPaymentSchema, updateOrderPaymentSchema } from '../schemas';

class OrderPaymentRoute {
  router = Router();
  orderPaymentController: OrderPaymentController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.orderPaymentController = new OrderPaymentController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.orderPaymentController.index.bind(this.orderPaymentController),
    );
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.orderPaymentController.find.bind(this.orderPaymentController),
    );
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createOrderPaymentSchema),
      this.orderPaymentController.create.bind(this.orderPaymentController),
    );
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateOrderPaymentSchema),
      this.orderPaymentController.update.bind(this.orderPaymentController),
    );
  }
}
export default new OrderPaymentRoute().router;
