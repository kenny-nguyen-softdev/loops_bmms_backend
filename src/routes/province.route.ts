import { Router } from 'express';
import ProvinceController from '../app/controllers/province.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createProvinceSchema, updateProvinceSchema } from '../schemas';
class ProvinceRoute {
  router = Router();
  provinceController: ProvinceController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.provinceController = new ProvinceController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {

    this.router.get('/public', this.provinceController.index.bind(this.provinceController));  
    /**
     * @openapi
     * /api/provinces:
     *   get:
     *     summary: Get a list of provinces
     *     description: Get a list of provinces.
     *     tags:
     *       - /api/provinces - Provinces
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the ....(null)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get Province have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get Province have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of provinces.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/Province'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.provinceController.index.bind(this.provinceController));
        /**
     * @openapi
     * /api/provinces/{id}:
     *   get:
     *     summary: Get a province by ID
     *     description: Get a specific province by its unique identifier.
     *     tags:
     *       - /api/provinces - Provinces
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: The ID of the province to retrieve.
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully retrieved the province.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Province'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: province not found
     *       500:
     *         description: Internal server error
     */
    this.router.get('/:id', this.authMiddleware.handler(), this.provinceController.find.bind(this.provinceController));
        /**
     * @openapi
     * /api/provinces:
     *   post:
     *     summary: Create a new province
     *     description: Create a new province with the provided data.
     *     tags:
     *       - /api/provinces - Provinces
     *     requestBody:
     *       description: province data to create.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateProvinceInput'
     *     responses:
     *       201:
     *         description: Successfully created a new province.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Province'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createProvinceSchema),
      this.provinceController.create.bind(this.provinceController),
    );
        /**
     * @openapi
     * /api/provinces/{id}:
     *   put:
     *     summary: Update a province
     *     description: Update an existing province with the provided data.
     *     tags:
     *       - /api/provinces - Provinces
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the province to be updated.
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: province data to update.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateProvinceInput'
     *     responses:
     *       200:
     *         description: Successfully updated the province.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Province'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: province not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateProvinceSchema),
      this.provinceController.update.bind(this.provinceController),
    );
        /**
     * @openapi
     * /api/provinces/{id}:
     *   delete:
     *     summary: Delete a province
     *     description: Delete an existing province with the specified ID.
     *     tags:
     *       - /api/provinces - Provinces
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the province to be deleted.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully deleted the province.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: province not found
     *       500:
     *         description: Internal server error
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.provinceController.destroy.bind(this.provinceController),
    );
  }
}
export default new ProvinceRoute().router;
