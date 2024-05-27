import { Router } from 'express';
import TaxController from '../app/controllers/tax.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createTaxSchema, updateTaxSchema } from '../schemas';
class TaxRoute {
  router = Router();
  taxController: TaxController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.taxController = new TaxController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/taxes:
     *   get:
     *     tags:
     *       - /api/taxes - Tax
     *     summary: Get all tax
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/Tax'
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.taxController.index.bind(this.taxController));

    /**
     * @openapi
     * /api/taxes/{id}:
     *   get:
     *     tags:
     *       - /api/taxes - Tax
     *     summary: Get a tax by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: ID of the tax to retrieve
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Tax'
     *       404:
     *         description: Tax not found
     *       500:
     *         description: Internal server error
     */
    this.router.get('/:id', this.authMiddleware.handler(), this.taxController.find.bind(this.taxController));

    /**
     * @openapi
     * /api/taxes:
     *   post:
     *     tags:
     *       - /api/taxes - Tax
     *     summary: Create a new tax
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateTaxInput'
     *     responses:
     *       201:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Tax'
     *       400:
     *         description: Bad request - Validation error
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createTaxSchema),
      this.taxController.create.bind(this.taxController),
    );

    /**
     * @openapi
     * /api/taxes/{id}:
     *   put:
     *     tags:
     *       - /api/taxes - Tax
     *     summary: Update a tax by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         schema:
     *           type: integer
     *         description: ID of the tax to update
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateTaxInput'
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Tax'
     *       400:
     *         description: Bad request - Validation error
     *       404:
     *         description: Tax not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateTaxSchema),
      this.taxController.update.bind(this.taxController),
    );

    /**
     * @openapi
     * /api/taxes/{id}:
     *   delete:
     *     tags:
     *       - /api/taxes - Tax
     *     summary: Delete a tax by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         schema:
     *           type: integer
     *         description: ID of the tax to delete
     *     responses:
     *       200:
     *         description: Successful deleted
     *       404:
     *         description: Tax not found
     *       500:
     *         description: Internal server error
     */
    this.router.delete('/:id', this.authMiddleware.handler(), this.taxController.destroy.bind(this.taxController));
  }
}
export default new TaxRoute().router;
