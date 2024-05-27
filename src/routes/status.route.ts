import { Router } from 'express';
import StatusController from '../app/controllers/status.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createStatusSchema, updateStatusSchema } from '../schemas';
class StatusRoute {
  router = Router();
  statusController: StatusController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.statusController = new StatusController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/statuses:
     *   get:
     *     summary: Get list of statuses
     *     description: Retrieve a list of statuses.
     *     tags:
     *       - /api/statuses - Statuses
     *     responses:
     *       200:
     *         description: Successfully retrieved the list of statuses.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/Status'
     *       401:
     *         description: Unauthorized. User must be authenticated to access the statuses.
     *       500:
     *         description: Internal server error. An unexpected error occurred on the server.
     */
    this.router.get('/', this.authMiddleware.handler(), this.statusController.index.bind(this.statusController));
    /**
     * @openapi
     * /api/statuses/{id}:
     *   get:
     *     summary: Get one status by ID
     *     description: Get a single status by providing its ID.
     *     tags:
     *       - /api/statuses - Statuses
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         schema:
     *           type: integer
     *           minimum: 1
     *         description: The ID of the status to retrieve.
     *     responses:
     *       200:
     *         description: Successfully retrieved the status.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Status'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Status not found
     *       500:
     *         description: Internal server error
     */

    this.router.get('/:id', this.authMiddleware.handler(), this.statusController.find.bind(this.statusController));
    /**
     * @openapi
     * /api/statuses:
     *   post:
     *     summary: Create a new status
     *     description: Create a new status with the provided data.
     *     tags:
     *       - /api/statuses - Statuses
     *     requestBody:
     *       description: Status data to create.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateStatusInput'
     *     responses:
     *       201:
     *         description: Successfully created a new status.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Status'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */

    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createStatusSchema),
      this.statusController.create.bind(this.statusController),
    );
    /**
     * @openapi
     * /api/statuses/{id}:
     *   put:
     *     summary: Update a status by ID
     *     description: Update an existing status with the provided data.
     *     tags:
     *       - /api/statuses - Statuses
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: The ID of the status to update.
     *     requestBody:
     *       description: Status data to update.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateStatusInput'
     *     responses:
     *       200:
     *         description: Successfully updated the status.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Status'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateStatusSchema),
      this.statusController.update.bind(this.statusController),
    );
    /**
     * @openapi
     * /api/statuses/{id}:
     *   delete:
     *     summary: Delete a status by ID
     *     description: Delete an existing status by its ID.
     *     tags:
     *       - /api/statuses - Statuses 
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: The ID of the status to delete.
     *     responses:
     *       200:
     *         description: Successfully deleted the status.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Not found
     *       500:
     *         description: Internal server error
     */

    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.statusController.destroy.bind(this.statusController),
    );
  }
}
export default new StatusRoute().router;
