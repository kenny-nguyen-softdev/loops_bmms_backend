import { Router } from 'express';
import SupplierGroupController from '../app/controllers/supplier-group.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createSupplierGroupSchema, updateSupplierGroupSchema } from '../schemas';
class SupplierGroupRoute {
  router = Router();
  supplierGroupController: SupplierGroupController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.supplierGroupController = new SupplierGroupController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/supplier-groups:
     *   get:
     *     tags:
     *       - /api/supplier-groups - Supplier Groups
     *     summary: Get the list of supplier groups
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/SupplierGroup'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.supplierGroupController.index.bind(this.supplierGroupController),
    );
    /**
     * @openapi
     * /api/supplier-groups/{id}:
     *   get:
     *     summary: Get a supplier group by id
     *     description: Retrieve information about a supplier group based on its unique id.
     *     tags:
     *       - /api/supplier-groups - Supplier Groups
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         schema:
     *           type: integer
     *         description: The id of the supplier group to retrieve.
     *     responses:
     *       200:
     *         description: Successful operation. Returns the supplier group information.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/SupplierGroup'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Not found
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.supplierGroupController.find.bind(this.supplierGroupController),
    );
    /**
     * @openapi
     * /api/supplier-groups:
     *   post:
     *     summary: Create a new supplier group
     *     description: Create a new supplier group with the provided data.
     *     tags:
     *       - /api/supplier-groups - Supplier Groups
     *     requestBody:
     *       description: Supplier group data to create.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateSupplierGroupInput'
     *     responses:
     *       201:
     *         description: Successfully created a new supplier group.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/SupplierGroup'
     *       401:
     *         description: Unauthorized. User must be authenticated to create a supplier group.
     *       404:
     *         description: Not found. The requested resource is not available.
     *       500:
     *         description: Internal server error. An unexpected error occurred on the server.
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createSupplierGroupSchema),
      this.supplierGroupController.create.bind(this.supplierGroupController),
    );
    /**
     * @openapi
     * /api/supplier-groups/{id}:
     *   put:
     *     summary: Update a supplier group
     *     description: Update an existing supplier group with the provided data.
     *     tags:
     *       - /api/supplier-groups - Supplier Groups
     *     parameters:
     *       - in: path
     *         name: id
     *         description: ID of the supplier group to update.
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: Supplier group data to update.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateSupplierGroupInput'
     *     responses:
     *       200:
     *         description: Successfully updated the supplier group.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/SupplierGroup'
     *       401:
     *         description: Unauthorized. User must be authenticated to update a supplier group.
     *       404:
     *         description: Not found. The requested supplier group does not exist.
     *       500:
     *         description: Internal server error. An unexpected error occurred on the server.
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateSupplierGroupSchema),
      this.supplierGroupController.update.bind(this.supplierGroupController),
    );
    /**
     * @openapi
     * /api/supplier-groups/{id}:
     *   delete:
     *     summary: Delete a supplier group
     *     description: Delete an existing supplier group with the provided ID.
     *     tags:
     *       - /api/supplier-groups - Supplier Groups
     *     parameters:
     *       - in: path
     *         name: id
     *         description: ID of the supplier group to delete.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully deleted the supplier group.
     *       401:
     *         description: Unauthorized. User must be authenticated to delete a supplier group.
     *       404:
     *         description: Not found. The requested supplier group does not exist.
     *       500:
     *         description: Internal server error. An unexpected error occurred on the server.
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.supplierGroupController.destroy.bind(this.supplierGroupController),
    );
  }
}
export default new SupplierGroupRoute().router;
