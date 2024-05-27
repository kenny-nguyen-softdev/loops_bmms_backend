import { Router } from 'express';
import DeliveryMethodController from '../app/controllers/delivery-method.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createDeliveryMethodSchema, updateDeliveryMethodSchema } from '../schemas';
class DeliveryMethodRoute {
  router = Router();
  deliveryMethodController: DeliveryMethodController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.deliveryMethodController = new DeliveryMethodController();
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
      this.deliveryMethodController.index.bind(this.deliveryMethodController),
    );
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.deliveryMethodController.find.bind(this.deliveryMethodController),
    );
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createDeliveryMethodSchema),
      this.deliveryMethodController.create.bind(this.deliveryMethodController),
    );
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateDeliveryMethodSchema),
      this.deliveryMethodController.update.bind(this.deliveryMethodController),
    );
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.deliveryMethodController.destroy.bind(this.deliveryMethodController),
    );
  }
}
export default new DeliveryMethodRoute().router;
