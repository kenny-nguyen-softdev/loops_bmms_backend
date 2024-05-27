import { Router } from 'express';
import OrderSupplierController from '../app/controllers/orderSupplier.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createOrderSupplierSchema } from '../schemas';

class OrderSupplier {
  router = Router();
  orderSupplierController: OrderSupplierController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.orderSupplierController = new OrderSupplierController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    this.initializedRoutes();
  }
  initializedRoutes() {
    /**
     * @openapi
     * /api/order-suppliers:
     *   get:
     *     summary: Get a list of all order suppliers
     *     description: Retrieve a list of all order suppliers.
     *     tags:
     *       - api/order-suppliers - Order Suppliers
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the...(Supplier|Staff|ImportStatus|OrderSupplierProductItems)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get orderSupplier have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get orderSupplier have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of order suppliers.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/OrderSupplier'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.orderSupplierController.index.bind(this.orderSupplierController),
    );
    /**
     * @openapi
     * /api/order-suppliers/{id}:
     *   get:
     *     summary: Get details of an order supplier
     *     description: Retrieve details of a specific order supplier by ID.
     *     tags:
     *       - api/order-suppliers - Order Suppliers
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         schema:
     *           type: integer
     *         description: ID of the order supplier to retrieve
     *       - in: query
     *         name: include
     *         description: The include of the...(Supplier|Staff|ImportStatus|OrderSupplierProductItems)
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the order supplier.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/OrderSupplier'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Order supplier not found
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.orderSupplierController.find.bind(this.orderSupplierController),
    );
    /**
     * @openapi
     * /api/order-suppliers:
     *   post:
     *     summary: Create a new order supplier
     *     description: Create a new order supplier with the provided information.
     *     tags:
     *       - api/order-suppliers - Order Suppliers
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateOrderSupplierInput'
     *     responses:
     *       201:
     *         description: Successfully created a new order supplier.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/CreateOrderSupplierResponse'
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
      this.validationMiddleware.handler(createOrderSupplierSchema),
      this.orderSupplierController.create.bind(this.orderSupplierController),
    );
  }
}
export default new OrderSupplier().router;
