import { Router } from 'express';
import DebtTypeController from '../app/controllers/debt-type.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class DebtTypeRoute {
  router = Router();
  debtTypeController: DebtTypeController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.debtTypeController = new DebtTypeController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/debt-types:
     *   get:
     *     tags:
     *       - /api/debt-types - Debt Types
     *     summary: Get the list of debt types
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 type: object
     *                 properties:
     *                   id:
     *                     type: integer
     *                   name:
     *                     type: string
     *                   key:
     *                     type: string
     *                   createdAt:
     *                     type: string
     *                     format: date-time
     *                   updatedAt:
     *                     type: string
     *                     format: date-time
     *                   deletedAt:
     *                     type: string
     *                     format: date-time
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.debtTypeController.index.bind(this.debtTypeController));
  }
}
export default new DebtTypeRoute().router;
