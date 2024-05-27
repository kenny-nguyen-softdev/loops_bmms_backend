import { Router } from 'express';
import PersonGroupTypeController from '../app/controllers/person-group-type.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class PersonGroupTypeRoute {
  router = Router();
  personGroupTypeController: PersonGroupTypeController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.personGroupTypeController = new PersonGroupTypeController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/person-group-types:
     *   get:
     *     summary: Get all person group types
     *     description: Retrieve a list of all person group types.
     *     tags:
     *       - /api/person-group-types - Person Group Types
     *     responses:
     *       200:
     *         description: Successfully retrieved the list of person group types.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 type: object
     *                 properties:
     *                   id:
     *                     type: integer
     *                     description: The unique identifier for the person group type.
     *                   name:
     *                     type: string
     *                     description: The name of the person group type.
     *                   key:
     *                     type: string
     *                     description: The key representing the person group type.
     *                   createdAt:
     *                     type: string
     *                     format: date-time
     *                     description: The date and time when the person group type was created.
     *                   updatedAt:
     *                     type: string
     *                     format: date-time
     *                     description: The date and time when the person group type was last updated.
     *                   deletedAt:
     *                     type: string
     *                     format: date-time
     *                     nullable: true
     *                     description: The date and time when the person group type was deleted (if applicable).
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */

    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.personGroupTypeController.index.bind(this.personGroupTypeController),
    );
  }
}
export default new PersonGroupTypeRoute().router;
