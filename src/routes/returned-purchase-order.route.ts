import { Router } from 'express';
import ReturnedPurchaseOrderController from '../app/controllers/returned-purchase-order.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createReturnedPurchaseOrderSchema } from '../schemas';
class ReturnedPurchaseOrderRoute {
  router = Router();
  returnedPurchaseOrderController: ReturnedPurchaseOrderController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.returnedPurchaseOrderController = new ReturnedPurchaseOrderController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/returned-purchase-orders:
     *   get:
     *     summary: Get a list of returned purchase orders
     *     description: Retrieve a list of returned purchase orders.
     *     tags:
     *       - api/returned-purchase-orders - Returned Purchase Orders
     *     parameters:
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get return purchase order have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get return purchase order have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of returned purchase orders.
     *         content:
     *            application/json:
     *              schema:
     *                type: array
     *                items:
     *                  $ref: '#/components/schemas/ReturnedPurchaseOrder'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.returnedPurchaseOrderController.index.bind(this.returnedPurchaseOrderController),
    );
    /**
     * @openapi
     * /api/returned-purchase-orders/{id}:
     *   get:
     *     summary: Get one of returned purchase order
     *     description: Retrieve one of returned purchase order.
     *     tags:
     *       - api/returned-purchase-orders - Returned Purchase Orders
     *     parameters:
     *       - name: id
     *         in: path
     *         description: The ID of the return purchase order to retrieve.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully retrieved one of returned purchase order.
     *         content:
     *            application/json:
     *              schema:
     *                  $ref: '#/components/schemas/ReturnedPurchaseOrder'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Returned purchase order not found
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.returnedPurchaseOrderController.find.bind(this.returnedPurchaseOrderController),
    );
    /**
     * @openapi
     * /api/returned-purchase-orders:
     *   post:
     *     summary: Create a returned purchase order
     *     description: Create a new returned purchase order.
     *     tags:
     *       - api/returned-purchase-orders - Returned Purchase Orders
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateReturnedPurchaseOrderInput'
     *     responses:
     *       201:
     *         description: Returned purchase order created successfully.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/CreateReturnedPurchaseOrderResponse'
     *       400:
     *         description: Bad Request
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createReturnedPurchaseOrderSchema),
      this.returnedPurchaseOrderController.create.bind(this.returnedPurchaseOrderController),
    );
  }
}
export default new ReturnedPurchaseOrderRoute().router;
