import { Router } from 'express';
import OrderController from '../app/controllers/order.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import {
  createOrderSchema,
  updateOrderSchema,
} from '../schemas';

class OrderRoute {
  router = Router();
  orderController: OrderController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.orderController = new OrderController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.orderController.index.bind(this.orderController),
    );
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.orderController.find.bind(this.orderController),
    );
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createOrderSchema),
      this.orderController.create.bind(this.orderController),
    );
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateOrderSchema),
      this.orderController.update.bind(this.orderController),
    );
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.orderController.destroy.bind(this.orderController),
    );
    this.router.put(
      '/:id/approve-order',
      this.authMiddleware.handler(),
      this.orderController.approveOrder.bind(this.orderController),
    );
    this.router.put(
      '/:id/exporting-inventory',
      this.authMiddleware.handler(),
      this.orderController.exportingInventory.bind(this.orderController),
    );
    this.router.put(
      '/:id/update-shipping',
      this.authMiddleware.handler(),
      this.orderController.updateShipping.bind(this.orderController),
    );
    this.router.put(
      '/:id/cancel-order',
      this.authMiddleware.handler(),
      this.orderController.cancelOrder.bind(this.orderController),
    );
  }
}
export default new OrderRoute().router;
