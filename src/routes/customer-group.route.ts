import { Router } from 'express';
import CustomerGroupController from '../app/controllers/customer-group.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createCustomerGroupSchema, updateCustomerGroupSchema } from '../schemas';
class CustomerGroupRoute {
  router = Router();
  customerGroupController: CustomerGroupController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.customerGroupController = new CustomerGroupController();
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
      this.customerGroupController.index.bind(this.customerGroupController),
    );
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.customerGroupController.find.bind(this.customerGroupController),
    );
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createCustomerGroupSchema),
      this.customerGroupController.create.bind(this.customerGroupController),
    );
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateCustomerGroupSchema),
      this.customerGroupController.update.bind(this.customerGroupController),
    );
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.customerGroupController.destroy.bind(this.customerGroupController),
    );
  }
}
export default new CustomerGroupRoute().router;
