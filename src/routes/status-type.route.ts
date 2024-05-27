import { Router } from 'express';
import StatusTypeController from '../app/controllers/status-type.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class StatusTypeRoute {
  router = Router();
  statusTypeController: StatusTypeController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.statusTypeController = new StatusTypeController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/status-types:
     *   get:
     *     tags:
     *       - /api/status-types - Status Types
     *     summary: Get the list of status types
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
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.statusTypeController.index.bind(this.statusTypeController),
    );
  }
}
export default new StatusTypeRoute().router;
