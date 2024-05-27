import { Router } from 'express';
import SupplierController from '../app/controllers/supplier.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createSupplierSchema, updateSupplierSchema } from '../schemas';
class SupplierRoute {
  router = Router();
  supplierController: SupplierController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.supplierController = new SupplierController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/suppliers:
     *   get:
     *     summary: Get a list of suppliers
     *     description: Retrieve a list of suppliers based on the provided filters.
     *     tags:
     *       - /api/suppliers - Suppliers
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the supplier group to filter suppliers.(SupplierGroup, Ward, PersonGroupType)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get supplier have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get supplier have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of suppliers.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/Supplier'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.supplierController.index.bind(this.supplierController));
    /**
     * @openapi
     * /api/suppliers/{id}:
     *   get:
     *     summary: Get a list of suppliers
     *     description: Retrieve a supplier based on the provided filters.
     *     tags:
     *       - /api/suppliers - Suppliers
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the supplier group to filter suppliers.(SupplierGroup, Ward, PersonGroupType)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get supplier have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get supplier have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of suppliers.
     *         content:
     *           application/json:
     *             schema:
     *                 $ref: '#/components/schemas/Supplier'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get('/:id', this.authMiddleware.handler(), this.supplierController.find.bind(this.supplierController));
    /**
     * @openapi
     * /api/suppliers:
     *   post:
     *     summary: Create a new supplier
     *     description: Create a new supplier with the provided information.
     *     tags:
     *       - /api/suppliers - Suppliers
     *     requestBody:
     *       description: Supplier information to be created.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateSupplierInput'
     *     responses:
     *       201:
     *         description: Successfully created a new supplier.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Supplier'
     *       400:
     *         description: Bad Request. The request body is invalid.
     *       401:
     *         description: Unauthorized. User is not authenticated
     *       500:
     *         description: Internal server error.
     */

    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createSupplierSchema),
      this.supplierController.create.bind(this.supplierController),
    );
    /**
     * @openapi
     * /api/suppliers/{id}:
     *   put:
     *     summary: Update a supplier
     *     description: Update an existing supplier based on the provided data.
     *     tags:
     *       - /api/suppliers - Suppliers
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the supplier to update.
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: The updated supplier data.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateSupplierInput'
     *     responses:
     *       200:
     *         description: Successfully updated the supplier.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Supplier'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Supplier not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateSupplierSchema),
      this.supplierController.update.bind(this.supplierController),
    );
    /**
     * @openapi
     * /api/suppliers/{id}:
     *   delete:
     *     summary: Delete a supplier
     *     description: Delete an existing supplier based on the provided ID.
     *     tags:
     *       - /api/suppliers - Suppliers
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the supplier to delete.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully deleted the supplier.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Supplier not found
     *       500:
     *         description: Internal server error
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.supplierController.destroy.bind(this.supplierController),
    );
  }
}
export default new SupplierRoute().router;
