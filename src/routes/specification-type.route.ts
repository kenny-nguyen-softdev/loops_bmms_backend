import { Router } from 'express';
import SpecificationTypeController from '../app/controllers/specification-type.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class SpecificationTypeRoute {
  router = Router();
  specificationTypeController: SpecificationTypeController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.specificationTypeController = new SpecificationTypeController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.get('/', this.authMiddleware.handler(), this.specificationTypeController.index.bind(this.specificationTypeController));
  }
}
export default new SpecificationTypeRoute().router;
