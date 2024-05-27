import { Router } from 'express';
import UnitController from '../app/controllers/unit.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createUnitSchema, updateUnitSchema } from '../schemas';

class UnitRoute {
  router = Router();
  unitController: UnitController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.unitController = new UnitController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/units:
     *   get:
     *     tags:
     *       - /api/units - Units
     *     summary: Get list of units
     *     description: Retrieves a list of all units
     *     responses:
     *       200:
     *         description: Successful operation
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/GetListUnitResponse'
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.unitController.index.bind(this.unitController));
    /**
     * @openapi
     * /api/units/{id}:
     *   get:
     *     tags:
     *       - /api/units - Units
     *     summary: Get a unit by ID
     *     description: Retrieves a unit based on the specified ID
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         schema:
     *           type: integer
     *         description: ID of the unit to retrieve
     *     responses:
     *       200:
     *         description: Successful operation
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/GetUnitResponse'
     *       404:
     *         description: Unit not found
     *       500:
     *         description: Internal server error
     */
    this.router.get('/:id', this.authMiddleware.handler(), this.unitController.find.bind(this.unitController));
    /**
     * @openapi
     * /api/units:
     *   post:
     *     tags:
     *       - /api/units - Units
     *     summary: Create a new unit
     *     description: Creates a new unit with the provided data
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateUnitRequest'
     *     responses:
     *       200:
     *         description: Successful operation
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/CreateUnitResponse'
     *       400:
     *         description: Invalid request body
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createUnitSchema),
      this.unitController.create.bind(this.unitController),
    );
    /**
     * @openapi
     * /api/units/{id}:
     *   put:
     *     tags:
     *       - /api/units - Units
     *     summary: Update a unit
     *     description: Updates an existing unit with the provided data
     *     parameters:
     *       - name: id
     *         in: path
     *         description: ID of the unit to update
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateUnitRequest'
     *     responses:
     *       200:
     *         description: Successful operation
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/UpdateUnitResponse'
     *       400:
     *         description: Invalid request body or ID
     *       404:
     *         description: Unit not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateUnitSchema),
      this.unitController.update.bind(this.unitController),
    );
    /**
     * @openapi
     * /api/units/{id}:
     *   delete:
     *     tags:
     *       - /api/units - Units
     *     summary: Delete a unit
     *     description: Deletes an existing unit with the specified ID
     *     parameters:
     *       - name: id
     *         in: path
     *         description: ID of the unit to delete
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: deleted successfull
     *       404:
     *         description: Unit not found
     *       500:
     *         description: Internal server error
     */
    this.router.delete('/:id', this.authMiddleware.handler(), this.unitController.destroy.bind(this.unitController));
  }
}
export default new UnitRoute().router;
