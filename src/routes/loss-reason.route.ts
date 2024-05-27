import { Router } from 'express';
import LossReasonController from '../app/controllers/loss-reason.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';

class LossReasonRoute {
  router = Router();
  lossReasonController: LossReasonController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.lossReasonController = new LossReasonController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/loss-reasons:
     *   get:
     *     summary: Get all loss reasons
     *     description: Retrieve a list of all loss reasons.
     *     tags:
     *       - api/loss-reasons - Loss Reasons
     *     responses:
     *       200:
     *         description: Successfully retrieved the list of loss reasons.
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
      this.lossReasonController.index.bind(this.lossReasonController),
    );
  }
}
export default new LossReasonRoute().router;
