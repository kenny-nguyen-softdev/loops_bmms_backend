import { Router } from 'express';
import DeliveryPartnerController from '../app/controllers/delivery-partner.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createDeliveryPartnerSchema, updateDeliveryPartnerSchema } from '../schemas';
class DeliveryPartnerRoute {
  router = Router();
  deliveryPartnerController: DeliveryPartnerController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.deliveryPartnerController = new DeliveryPartnerController();
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
      this.deliveryPartnerController.index.bind(this.deliveryPartnerController),
    );
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.deliveryPartnerController.find.bind(this.deliveryPartnerController),
    );
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createDeliveryPartnerSchema),
      this.deliveryPartnerController.create.bind(this.deliveryPartnerController),
    );
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateDeliveryPartnerSchema),
      this.deliveryPartnerController.update.bind(this.deliveryPartnerController),
    );
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.deliveryPartnerController.destroy.bind(this.deliveryPartnerController),
    );
  }
}
export default new DeliveryPartnerRoute().router;
