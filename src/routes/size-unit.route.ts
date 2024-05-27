import { Router } from 'express';
import SizeUnitController from '../app/controllers/size-unit.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class SizeUnitRoute {
  router = Router();
  sizeUnitController: SizeUnitController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.sizeUnitController = new SizeUnitController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.get('/', this.authMiddleware.handler(), this.sizeUnitController.index.bind(this.sizeUnitController));
  }
}
export default new SizeUnitRoute().router;
