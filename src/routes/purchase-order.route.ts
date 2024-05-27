import { Router } from 'express';
import PurchaseOrderController from '../app/controllers/purchase-order.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import {
  createPurchaseOrderSchema,
  updatePurchaseOrderImportStatusSchema,
  updatePurchaseOrderSchema,
} from '../schemas';

class PurchaseOrderRoute {
  router = Router();
  purchaseOrderController: PurchaseOrderController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.purchaseOrderController = new PurchaseOrderController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/purchase-orders:
     *   get:
     *     summary: Get all purchase orders
     *     description: Retrieve a list of all purchase orders.
     *     tags:
     *       - /api/purchase-orders - Purchase Orders
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the ....(VoucherType|Supplier|Staff|PaymentStatus|ImportStatus)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get purchase-order have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get purchase-order have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of purchase orders.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/PurchaseOrder'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.purchaseOrderController.index.bind(this.purchaseOrderController),
    );
    /**
     * @openapi
     * /api/purchase-orders/{id}:
     *   get:
     *     summary: Get a purchase order by ID
     *     description: Retrieve a specific purchase order by its ID.
     *     tags:
     *       - /api/purchase-orders - Purchase Orders
     *     parameters:
     *       - name: id
     *         in: path
     *         description: The ID of the purchase order to retrieve.
     *         required: true
     *         schema:
     *           type: integer
     *       - in: query
     *         name: include
     *         description: The include of the VoucherType|Supplier|Staff|PaymentStatus|ImportStatus.(VoucherType|Supplier|Staff|PaymentStatus|ImportStatus)
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the purchase order.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/PurchaseOrder'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Purchase order not found
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.purchaseOrderController.find.bind(this.purchaseOrderController),
    );
    /**
     * @openapi
     * /api/purchase-orders:
     *   post:
     *     summary: Create a new purchase order
     *     description: Create a new purchase order with the given details and product items.
     *     tags:
     *       - /api/purchase-orders - Purchase Orders
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreatePurchaseOrderInput'
     *     responses:
     *       201:
     *         description: Successfully created a new purchase order.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/CreatePurchaseOrderResponse'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createPurchaseOrderSchema),
      this.purchaseOrderController.create.bind(this.purchaseOrderController),
    );
    /**
     * @openapi
     * /api/purchase-orders/{id}:
     *   put:
     *     summary: Update a purchase order by ID
     *     description: Update an existing purchase order with the given ID and details.
     *     tags:
     *       - /api/purchase-orders - Purchase Orders
     *     parameters:
     *       - name: id
     *         in: path
     *         required: true
     *         description: The ID of the purchase order to update.
     *         schema:
     *           type: integer
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdatePurchaseOrderInput'
     *     responses:
     *       200:
     *         description: Successfully updated the purchase order.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/PurchaseOrder'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Purchase order not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updatePurchaseOrderSchema),
      this.purchaseOrderController.update.bind(this.purchaseOrderController),
    );
    /**
     * @openapi
     * /api/purchase-orders/{id}:
     *   delete:
     *     summary: Delete a purchase order by ID
     *     description: Delete an existing purchase order with the given ID.
     *     tags:
     *       - /api/purchase-orders - Purchase Orders
     *     parameters:
     *       - name: id
     *         in: path
     *         required: true
     *         description: The ID of the purchase order to delete.
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully deleted the purchase order.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Purchase order not found
     *       500:
     *         description: Internal server error
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.purchaseOrderController.destroy.bind(this.purchaseOrderController),
    );
    /**
     * @openapi
     * /api/purchase-orders/{id}/update-import-status:
     *   put:
     *     summary: Update import status of a purchase order
     *     description: Update the import status of a purchase order using a new status ID.
     *     tags:
     *       - /api/purchase-orders - Purchase Orders
     *     parameters:
     *       - name: id
     *         in: path
     *         description: ID of the purchase order
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdatePurchaseOrderImportStatusInput'
     *     responses:
     *       200:
     *         description: Successfully updated import status of the purchase order.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/PurchaseOrder'
     *       400:
     *         description: Bad request
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Purchase order not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id/update-import-status',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updatePurchaseOrderImportStatusSchema),
      this.purchaseOrderController.updatePurchaseOrderImportStatus.bind(this.purchaseOrderController),
    );
  }
}
export default new PurchaseOrderRoute().router;
