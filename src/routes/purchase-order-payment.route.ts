import { Router } from 'express';
import PurchaseOrderPaymentController from '../app/controllers/purchase-order-payment.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createPurchaseOrderPaymentSchema, updatePurchaseOrderPaymentSchema } from '../schemas';

class PurchaseOrderPaymentRoute {
  router = Router();
  purchaseOrderPaymentController: PurchaseOrderPaymentController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.purchaseOrderPaymentController = new PurchaseOrderPaymentController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/purchase-order-payments:
     *   get:
     *     summary: Get all purchase order payments
     *     description: Retrieve a list of all purchase order payments.
     *     tags:
     *       - /api/purchase-order-payments - Purchase Order Payments
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the ....(PurchaseOrder)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get purchase-order-payment have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get purchase-order-payment have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of purchase order payments.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/PurchaseOrderPayment'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.purchaseOrderPaymentController.index.bind(this.purchaseOrderPaymentController),
    );

    /**
     * @openapi
     * /api/purchase-order-payments/{id}:
     *   get:
     *     summary: Get a purchase order payment by ID
     *     description: Retrieve a specific purchase order payment by its ID.
     *     tags:
     *       - /api/purchase-order-payments - Purchase Order Payments
     *     parameters:
     *       - name: id
     *         in: path
     *         description: The ID of the purchase order payment to retrieve.
     *         required: true
     *         schema:
     *           type: integer
     *       - in: query
     *         name: include
     *         description: The include of the PurchaseOrder.(PurchaseOrder)
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the purchase order payment.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/PurchaseOrderPayment'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Purchase order payment not found
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.purchaseOrderPaymentController.find.bind(this.purchaseOrderPaymentController),
    );
    /**
     * @openapi
     * /api/purchase-order-payments:
     *   post:
     *     summary: Create a new purchase order payment
     *     description: Create a new purchase order payment.
     *     tags:
     *       - /api/purchase-order-payments - Purchase Order Payments
     *     requestBody:
     *       description: The purchase order payment object to create.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreatePurchaseOrderPaymentInput'
     *     responses:
     *       201:
     *         description: Successfully created a new purchase order payment.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/PurchaseOrderPayment'
     *       400:
     *         description: Bad request. Invalid input data.
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createPurchaseOrderPaymentSchema),
      this.purchaseOrderPaymentController.create.bind(this.purchaseOrderPaymentController),
    );
    /**
     * @openapi
     * /api/purchase-order-payments/{id}:
     *   put:
     *     summary: Update a purchase order payment by ID
     *     description: Update a purchase order payment by providing its ID.
     *     tags:
     *       - /api/purchase-order-payments - Purchase Order Payments
     *     parameters:
     *       - name: id
     *         in: path
     *         description: The ID of the purchase order payment to update.
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: The updated purchase order payment object.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdatePurchaseOrderPaymentInput'
     *     responses:
     *       200:
     *         description: Successfully updated the purchase order payment.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/PurchaseOrderPayment'
     *       400:
     *         description: Bad request. Invalid input data.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Purchase order payment not found.
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updatePurchaseOrderPaymentSchema),
      this.purchaseOrderPaymentController.update.bind(this.purchaseOrderPaymentController),
    );
  }
}
export default new PurchaseOrderPaymentRoute().router;
