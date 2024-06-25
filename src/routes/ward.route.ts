import { Router } from 'express';
import WardController from '../app/controllers/ward.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createWardSchema, updateWardSchema } from '../schemas';
class WardRoute {
  router = Router();
  wardController: WardController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.wardController = new WardController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.get('/public', this.wardController.index.bind(this.wardController));
    /**
     * @openapi
     * /api/wards:
     *   get:
     *     summary: Get a list of wards
     *     description: Get a list of wards.
     *     tags:
     *       - /api/wards - Wards
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the ....(District)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get Ward have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get Ward have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of wards.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/Ward'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.wardController.index.bind(this.wardController));
    /**
     * @openapi
     * /api/wards/{id}:
     *   get:
     *     summary: Get a ward by ID
     *     description: Get a specific ward by its unique identifier.
     *     tags:
     *       - /api/wards - Wards
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: The ID of the ward to retrieve.
     *         schema:
     *           type: integer
     *       - in: query
     *         name: include
     *         description: The include of the ....(District)
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the ward.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Ward'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Ward not found
     *       500:
     *         description: Internal server error
     */

    this.router.get('/:id', this.authMiddleware.handler(), this.wardController.find.bind(this.wardController));
    /**
     * @openapi
     * /api/wards:
     *   post:
     *     summary: Create a new ward
     *     description: Create a new ward with the provided data.
     *     tags:
     *       - /api/wards - Wards
     *     requestBody:
     *       description: Ward data to create.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateWardInput'
     *     responses:
     *       201:
     *         description: Successfully created a new ward.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Ward'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createWardSchema),
      this.wardController.create.bind(this.wardController),
    );
    /**
     * @openapi
     * /api/wards/{id}:
     *   put:
     *     summary: Update a ward
     *     description: Update an existing ward with the provided data.
     *     tags:
     *       - /api/wards - Wards
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the ward to be updated.
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: Ward data to update.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateWardInput'
     *     responses:
     *       200:
     *         description: Successfully updated the ward.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Ward'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Ward not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateWardSchema),
      this.wardController.update.bind(this.wardController),
    );
    /**
     * @openapi
     * /api/wards/{id}:
     *   delete:
     *     summary: Delete a ward
     *     description: Delete an existing ward with the specified ID.
     *     tags:
     *       - /api/wards - Wards
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the ward to be deleted.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully deleted the ward.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Ward not found
     *       500:
     *         description: Internal server error
     */
    this.router.delete('/:id', this.authMiddleware.handler(), this.wardController.destroy.bind(this.wardController));
  }
}
export default new WardRoute().router;
