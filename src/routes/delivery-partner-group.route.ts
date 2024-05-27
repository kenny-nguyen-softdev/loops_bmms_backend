import { Router } from 'express';
import DeliveryPartnerGroupController from '../app/controllers/delivery-partner-group.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createDeliveryPartnerGroupSchema, updateDeliveryPartnerGroupSchema } from '../schemas';
class DeliveryPartnerGroupRoute {
  router = Router();
  deliveryPartnerGroupController: DeliveryPartnerGroupController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.deliveryPartnerGroupController = new DeliveryPartnerGroupController();
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
      this.deliveryPartnerGroupController.index.bind(this.deliveryPartnerGroupController),
    );
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.deliveryPartnerGroupController.find.bind(this.deliveryPartnerGroupController),
    );
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createDeliveryPartnerGroupSchema),
      this.deliveryPartnerGroupController.create.bind(this.deliveryPartnerGroupController),
    );
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateDeliveryPartnerGroupSchema),
      this.deliveryPartnerGroupController.update.bind(this.deliveryPartnerGroupController),
    );
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.deliveryPartnerGroupController.destroy.bind(this.deliveryPartnerGroupController),
    );
  }
}
export default new DeliveryPartnerGroupRoute().router;
