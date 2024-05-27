import { Router } from 'express';
import ReturnedOrderController from '../app/controllers/returned-order.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createReturnedOrderSchema } from '../schemas';
class ReturnedOrderRoute {
  router = Router();
  returnedOrderController: ReturnedOrderController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.returnedOrderController = new ReturnedOrderController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.returnedOrderController.index.bind(this.returnedOrderController),
    );
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.returnedOrderController.find.bind(this.returnedOrderController),
    );
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createReturnedOrderSchema),
      this.returnedOrderController.create.bind(this.returnedOrderController),
    );
  }
}
export default new ReturnedOrderRoute().router;
