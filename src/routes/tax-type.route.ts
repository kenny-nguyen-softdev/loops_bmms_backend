import { Router } from 'express';
import TaxTypeController from '../app/controllers/tax-type.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class TaxTypeRoute {
  router = Router();
  taxTypeController: TaxTypeController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.taxTypeController = new TaxTypeController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/tax-types:
     *   get:
     *     tags:
     *       - /api/tax-types - Tax Types
     *     summary: Get all tax types
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/TaxTypeResponse'
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.taxTypeController.index.bind(this.taxTypeController));
  }
}
export default new TaxTypeRoute().router;
