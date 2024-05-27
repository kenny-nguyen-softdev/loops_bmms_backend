import { Router } from 'express';
import VoucherGroupTypeController from '../app/controllers/voucher-group-type.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class VoucherGroupTypeRoute {
  router = Router();
  voucherGroupTypeController: VoucherGroupTypeController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.voucherGroupTypeController = new VoucherGroupTypeController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/voucher-group-types:
     *   get:
     *     summary: Get all voucher group types
     *     description: Retrieve a list of all voucher group types.
     *     tags:
     *       - /api/voucher-group-types - Voucher Group Types
     *     responses:
     *       200:
     *         description: Successfully retrieved the list of voucher group types.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 type: object
     *                 properties:
     *                   id:
     *                     type: integer
     *                     description: The unique identifier for the voucher group type.
     *                   name:
     *                     type: string
     *                     description: The name of the voucher group type.
     *                   key:
     *                     type: string
     *                     description: The key representing the voucher group type.
     *                   createdAt:
     *                     type: string
     *                     format: date-time
     *                     description: The date and time when the voucher group type was created.
     *                   updatedAt:
     *                     type: string
     *                     format: date-time
     *                     description: The date and time when the voucher group type was last updated.
     *                   deletedAt:
     *                     type: string
     *                     format: date-time
     *                     nullable: true
     *                     description: The date and time when the voucher group type was deleted (if applicable).
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.voucherGroupTypeController.index.bind(this.voucherGroupTypeController),
    );
  }
}
export default new VoucherGroupTypeRoute().router;
