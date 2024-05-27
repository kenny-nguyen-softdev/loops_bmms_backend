import { Router } from 'express';
import StockAdjustmentController from '../app/controllers/stock-adjustment.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createStockAdjustmentSchema, updateStockAdjustmentSchema } from '../schemas';

class StockAdjustmentRoute {
  router = Router();
  stockAdjustmentController: StockAdjustmentController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.stockAdjustmentController = new StockAdjustmentController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/stock-adjustments:
     *   get:
     *     summary: Get all stock adjustments
     *     description: Retrieve a list of all stock adjustments.
     *     tags:
     *       - api/stock-adjustments - Stock Adjustments
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the ...(...)
     *         type: string
     *       - in: query
     *         name: orderBy
     *         description: The order in which the results should be sorted. Multiple fields can be separated by '|' (pipe) and can include an optional sort direction (e.g., 'field1,asc|field2,desc').
     *         type: string
     *       - in: query
     *         name: limit
     *         description: Limit the number of results returned.
     *         type: integer
     *       - in: query
     *         name: field!
     *         description: Filters the results where 'field' is not equal to the specified value.
     *         type: string
     *       - in: query
     *         name: id{}
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get stock adjustments have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get stock adjustments have 'id' not in 5-66).
     *         type: string
     *       - in: query
     *         name: id{gt}
     *         description: Filters the results where 'id' is greater than the specified value.
     *         type: string
     *       - in: query
     *         name: id{gte}
     *         description: Filters the results where 'id' is greater than or equal to the specified value.
     *         type: string
     *       - in: query
     *         name: id{lt}
     *         description: Filters the results where 'id' is less than the specified value.
     *         type: string
     *       - in: query
     *         name: id{lte}
     *         description: Filters the results where 'id' is less than or equal to the specified value.
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the list of stock adjustments.
     *         content:
     *           application/json:
     *              schema:
     *                type: array
     *                items:
     *                  $ref: '#/components/schemas/StockAdjustment'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.stockAdjustmentController.index.bind(this.stockAdjustmentController),
    );
    /**
     * @openapi
     * /api/stock-adjustments/{id}:
     *   get:
     *     summary: Get a stock adjustment by ID
     *     description: Retrieve a specific stock adjustment by its ID.
     *     tags:
     *       - api/stock-adjustments - Stock Adjustments
     *     parameters:
     *       - in: path
     *         name: id
     *         description: ID of the stock adjustment to retrieve.
     *         required: true
     *         schema:
     *           type: integer
     *       - in: query
     *         name: include
     *         description: The include of the ...(...)
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the stock adjustment.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/StockAdjustment'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Stock adjustment not found
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.stockAdjustmentController.find.bind(this.stockAdjustmentController),
    );
    /**
     * @openapi
     * /api/stock-adjustments:
     *   post:
     *     summary: Create a new stock adjustment
     *     description: Create a new stock adjustment, including details of product items affected by the adjustment.
     *     tags:
     *       - api/stock-adjustments - Stock Adjustments
     *     requestBody:
     *       description: Stock adjustment data
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/StockAdjustmentInput'
     *     responses:
     *       201:
     *         description: Stock adjustment created successfully
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/StockAdjustmentResponse'
     *       400:
     *         description: Bad request, validation failed
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createStockAdjustmentSchema),
      this.stockAdjustmentController.create.bind(this.stockAdjustmentController),
    );
    /**
     * @openapi
     * /api/stock-adjustments/{id}:
     *   put:
     *     summary: Update an existing stock adjustment
     *     description: Update an existing stock adjustment, including details of product items affected by the adjustment.
     *     tags:
     *       - api/stock-adjustments - Stock Adjustments
     *     parameters:
     *       - in: path
     *         name: id
     *         description: ID of the stock adjustment to update
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: Stock adjustment data
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateStockAdjustmentInput'
     *     responses:
     *       200:
     *         description: Stock adjustment updated successfully
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/UpdateStockAdjustmentResponse'
     *       400:
     *         description: Bad request, validation failed
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Stock adjustment not found
     *       500:
     *         description: Internal server error
     */

    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateStockAdjustmentSchema),
      this.stockAdjustmentController.update.bind(this.stockAdjustmentController),
    );
    /**
     * @openapi
     * /api/stock-adjustments/{id}:
     *   delete:
     *     summary: Delete a stock adjustment
     *     description: Delete a stock adjustment by marking it as deleted in the system.
     *     tags:
     *       - api/stock-adjustments - Stock Adjustments
     *     parameters:
     *       - in: path
     *         name: id
     *         description: ID of the stock adjustment to delete
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Stock adjustment deleted successfully
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Stock adjustment not found
     *       500:
     *         description: Internal server error
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.stockAdjustmentController.destroy.bind(this.stockAdjustmentController),
    );
    /**
     * @openapi
     * /api/stock-adjustments/{id}/inventory-balance:
     *   put:
     *     summary: Balance inventory for a stock adjustment
     *     description: Update the inventory quantities of products based on a stock adjustment.
     *     tags:
     *       - api/stock-adjustments - Stock Adjustments
     *     parameters:
     *       - in: path
     *         name: id
     *         description: ID of the stock adjustment to balance inventory for
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Inventory balanced successfully
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/BalanceInventoryResponse'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Stock adjustment not found
     *       500:
     *         description: Internal server error
     */

    this.router.put(
      '/:id/inventory-balance',
      this.authMiddleware.handler(),
      this.stockAdjustmentController.balanceInventory.bind(this.stockAdjustmentController),
    );
  }
}
export default new StockAdjustmentRoute().router;
