import { Router } from 'express';
import CustomerController from '../app/controllers/customer.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import createCustomerSchema from '../schemas/Customer/create-customer.schema';
import { updateCustomerSchema } from '../schemas';

class CustomerRoute {
  router = Router();
  customerController: CustomerController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.customerController = new CustomerController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    this.initialize();
  }
  initialize() {
    /**
     * @openapi
     * /api/customers:
     *   get:
     *     summary: Get a list of customers
     *     description: Retrieve a list of all customers.
     *     tags:
     *       - api/customers - Customers
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the ....(Ward)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get customer have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get customer have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of customers.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/Customer'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.customerController.index.bind(this.customerController));
    /**
     * @openapi
     * /api/customers/{id}:
     *   get:
     *     summary: Get a customer by ID
     *     description: Retrieve a customer by its unique ID.
     *     tags:
     *       - api/customers - Customers
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         schema:
     *           type: integer
     *           format: int64
     *         description: ID of the customer to retrieve.
     *       - in: query
     *         name: include
     *         description: The include of the ....(Ward)
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the customer.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Customer'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Customer not found
     *       500:
     *         description: Internal server error
     */
    this.router.get('/:id', this.authMiddleware.handler(), this.customerController.find.bind(this.customerController));
    /**
     * @openapi
     * /api/customers:
     *   post:
     *     summary: Create a new customer
     *     description: Create a new customer with the provided information.
     *     tags:
     *       - api/customers - Customers
     *     requestBody:
     *       description: Customer information to create.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateCustomerInput'
     *     responses:
     *       201:
     *         description: Successfully created a new customer.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Customer'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */

    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createCustomerSchema),
      this.customerController.create.bind(this.customerController),
    );
    /**
     * @openapi
     * /api/customers/{id}:
     *   put:
     *     summary: Update a customer
     *     description: Update an existing customer based on the provided ID.
     *     tags:
     *       - api/customers - Customers
     *     parameters:
     *       - name: id
     *         in: path
     *         description: The ID of the customer to update.
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: The updated customer object.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateCustomerInput'
     *     responses:
     *       200:
     *         description: Successfully updated the customer.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Customer'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Customer not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateCustomerSchema),
      this.customerController.update.bind(this.customerController),
    );
    /**
     * @openapi
     * /api/customers/{id}:
     *   delete:
     *     summary: Delete a customer
     *     description: Delete an existing customer based on the provided ID.
     *     tags:
     *       - api/customers - Customers
     *     parameters:
     *       - name: id
     *         in: path
     *         description: The ID of the customer to delete.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully deleted the customer.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Customer not found
     *       500:
     *         description: Internal server error
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.customerController.destroy.bind(this.customerController),
    );
    /**
     * @openapi
     * /api/customers/reactivate/{id}:
     *   put:
     *     summary: Reactivate a customer
     *     description: Reactivate an existing customer based on the provided ID.
     *     tags:
     *       - api/customers - Customers
     *     parameters:
     *       - name: id
     *         in: path
     *         description: The ID of the customer to reactivate.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully reactivated the customer.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Customer'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Customer not found
     *       500:
     *         description: Internal server error
     */
    this.router
      .route('/reactivate/:id')
      .put(this.authMiddleware.handler(), this.customerController.reactivate.bind(this.customerController));
  }
}
export default new CustomerRoute().router;
