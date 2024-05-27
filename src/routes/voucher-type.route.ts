import { Router } from 'express';
import VoucherTypeController from '../app/controllers/voucher-type.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class VoucherTypeRoute {
  router = Router();
  voucherTypeController: VoucherTypeController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.voucherTypeController = new VoucherTypeController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/voucher-types:
     *   get:
     *     summary: Get all voucher types
     *     description: Retrieve a list of all voucher types.
     *     tags:
     *       - /api/voucher-types - Voucher Types
     *     responses:
     *       200:
     *         description: Successfully retrieved the list of voucher types.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 type: object
     *                 properties:
     *                   id:
     *                     type: integer
     *                     description: The unique identifier for the voucher type.
     *                   name:
     *                     type: string
     *                     description: The name of the voucher type.
     *                   key:
     *                     type: string
     *                     description: The key representing the voucher type.
     *                   createdAt:
     *                     type: string
     *                     format: date-time
     *                     description: The date and time when the voucher type was created.
     *                   updatedAt:
     *                     type: string
     *                     format: date-time
     *                     description: The date and time when the voucher type was last updated.
     *                   deletedAt:
     *                     type: string
     *                     format: date-time
     *                     nullable: true
     *                     description: The date and time when the voucher type was deleted (if applicable).
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.voucherTypeController.index.bind(this.voucherTypeController),
    );
  }
}
export default new VoucherTypeRoute().router;
