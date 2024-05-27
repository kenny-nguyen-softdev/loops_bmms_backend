import { Router } from 'express';
import SpecificationController from '../app/controllers/specification.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import {
  createSpecificationSchema,
  updateSpecificationSchema,
} from '../schemas';

class SpecificationRoute {
  router = Router();
  specificationController: SpecificationController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.specificationController = new SpecificationController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.specificationController.index.bind(this.specificationController),
    );
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.specificationController.find.bind(this.specificationController),
    );
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createSpecificationSchema),
      this.specificationController.create.bind(this.specificationController),
    );
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateSpecificationSchema),
      this.specificationController.update.bind(this.specificationController),
    );
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.specificationController.destroy.bind(this.specificationController),
    );
  }
}
export default new SpecificationRoute().router;
