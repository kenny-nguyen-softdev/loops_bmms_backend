import { Router } from 'express';
import ProductUnitController from '../app/controllers/product-unit.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createProductUnitSchema, updateProductUnitSchema } from '../schemas';
class ProductUnitRoute {
  router = Router();
  productUnitController: ProductUnitController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.productUnitController = new ProductUnitController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.get('/', this.authMiddleware.handler(), this.productUnitController.index.bind(this.productUnitController));
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.productUnitController.find.bind(this.productUnitController),
    );
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createProductUnitSchema),
      this.productUnitController.create.bind(this.productUnitController),
    );
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateProductUnitSchema),
      this.productUnitController.update.bind(this.productUnitController),
    );
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.productUnitController.destroy.bind(this.productUnitController),
    );
  }
}
export default new ProductUnitRoute().router;
