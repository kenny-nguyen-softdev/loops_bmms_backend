import { Router } from 'express';
import PaymentMethodController from '../app/controllers/payment-method.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class PaymentMethodRoute {
  router = Router();
  paymentMethodController: PaymentMethodController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.paymentMethodController = new PaymentMethodController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/payment-methods:
     *   get:
     *     tags:
     *       - /api/payment-methods - Payment Methods
     *     summary: Get the list of payment methods
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
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.paymentMethodController.index.bind(this.paymentMethodController),
    );
  }
}
export default new PaymentMethodRoute().router;
