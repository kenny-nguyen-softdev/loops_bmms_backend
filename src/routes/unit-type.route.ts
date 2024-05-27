import { Router } from 'express';
import UnitTypeController from '../app/controllers/unit-type.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class UnitTypeRoute {
  router = Router();
  unitTypeController: UnitTypeController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.unitTypeController = new UnitTypeController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/unit-types:
     *   get:
     *     tags:
     *       - /api/unit-types - Unit Types
     *     summary: Get all unit types
     *     description: Retrieve all unit types
     *     responses:
     *       200:
     *         description: Unit types successfully retrieved
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/UnitTypeResponse'
     *       500:
     *         description: Error occurred while retrieving the unit types
     */
    this.router.get('/', this.authMiddleware.handler(), this.unitTypeController.index.bind(this.unitTypeController));
  }
}
export default new UnitTypeRoute().router;
