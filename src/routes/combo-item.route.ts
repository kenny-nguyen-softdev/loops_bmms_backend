import { Router } from 'express';
import ComboItemController from '../app/controllers/combo-item.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createComboItemSchema, updateComboItemSchema } from '../schemas';
class ComboItemRoute {
  router = Router();
  comboItemController: ComboItemController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.comboItemController = new ComboItemController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/combo-items:
     *   get:
     *     summary: Get a list of combo items
     *     description: Retrieve a list of combo items based on the provided filters.
     *     tags:
     *       - /api/combo-items - Combo Items
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the combo group to filter combos.(Combo, Product, Service)
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
     *         name: id!
     *         description: Filters the results where 'id' is not equal to the specified value.
     *         type: string
     *       - in: query
     *         name: id{}
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get combo have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get combo have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of combo items.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/ComboItem'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.comboItemController.index.bind(this.comboItemController));
    /**
     * @openapi
     * /api/combo-items/{id}:
     *   get:
     *     summary: Get a single combo item
     *     description: Retrieve a single combo item by its ID.
     *     tags:
     *       - /api/combo-items - Combo Items
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the combo group to filter combos.(Combo, Product, Service)
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
     *         name: id!
     *         description: Filters the results where 'id' is not equal to the specified value.
     *         type: string
     *       - in: query
     *         name: id{}
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get combo have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get combo have 'id' not in 5-66).
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
     *         description: Successfully retrieved the combo item.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/ComboItem'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Combo item not found
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.comboItemController.find.bind(this.comboItemController),
    );
    /**
     * @openapi
     * /api/combo-items:
     *   post:
     *     summary: Create a new combo item
     *     description: Create a new combo item with the provided details.
     *     tags:
     *       - /api/combo-items - Combo Items
     *     requestBody:
     *       description: The details of the combo item to create.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateComboItemInput'
     *     responses:
     *       201:
     *         description: Combo item successfully created.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/ComboItem'
     *       400:
     *         description: Invalid request body.
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createComboItemSchema),
      this.comboItemController.create.bind(this.comboItemController),
    );
    /**
     * @openapi
     * /api/combo-items/{id}:
     *   put:
     *     summary: Update a combo item
     *     description: Update an existing combo item with the provided details.
     *     tags:
     *       - /api/combo-items - Combo Items
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the combo item to update.
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: The details of the combo item to update.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateComboItemInput'
     *     responses:
     *       200:
     *         description: Combo item successfully updated.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/ComboItem'
     *       400:
     *         description: Invalid request body.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Combo item not found.
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateComboItemSchema),
      this.comboItemController.update.bind(this.comboItemController),
    );
    /**
     * @openapi
     * /api/combo-items/{id}:
     *   delete:
     *     summary: Delete a combo item
     *     description: Delete an existing combo item by its ID.
     *     tags:
     *       - /api/combo-items - Combo Items
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the combo item to delete.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Combo item successfully deleted.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Combo item not found.
     *       500:
     *         description: Internal server error
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.comboItemController.destroy.bind(this.comboItemController),
    );
  }
}
export default new ComboItemRoute().router;
