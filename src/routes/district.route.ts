import { Router } from 'express';
import DistrictController from '../app/controllers/district.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { createDistrictSchema, updateDistrictSchema } from '../schemas';
class DistrictRoute {
  router = Router();
  districtController: DistrictController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.districtController = new DistrictController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.get('/public', this.districtController.index.bind(this.districtController));
    
    /**
     * @openapi
     * /api/districts:
     *   get:
     *     summary: Get a list of districts
     *     description: Get a list of districts.
     *     tags:
     *       - /api/districts - Districts
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the ....(Province)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get District have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get District have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of districts.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/District'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.districtController.index.bind(this.districtController));
    /**
     * @openapi
     * /api/districts/{id}:
     *   get:
     *     summary: Get a district by ID
     *     description: Get a specific district by its unique identifier.
     *     tags:
     *       - /api/districts - Districts
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: The ID of the district to retrieve.
     *         schema:
     *           type: integer
     *       - in: query
     *         name: include
     *         description: The include of the ....(Province)
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the district.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/District'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: district not found
     *       500:
     *         description: Internal server error
     */
    this.router.get('/:id', this.authMiddleware.handler(), this.districtController.find.bind(this.districtController));
        /**
     * @openapi
     * /api/districts:
     *   post:
     *     summary: Create a new district
     *     description: Create a new district with the provided data.
     *     tags:
     *       - /api/districts - Districts
     *     requestBody:
     *       description: district data to create.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateDistrictInput'
     *     responses:
     *       201:
     *         description: Successfully created a new district.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/District'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createDistrictSchema),
      this.districtController.create.bind(this.districtController),
    );
        /**
     * @openapi
     * /api/districts/{id}:
     *   put:
     *     summary: Update a district
     *     description: Update an existing district with the provided data.
     *     tags:
     *       - /api/districts - Districts
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the district to be updated.
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: district data to update.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateDistrictInput'
     *     responses:
     *       200:
     *         description: Successfully updated the district.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/District'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: district not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateDistrictSchema),
      this.districtController.update.bind(this.districtController),
    );
        /**
     * @openapi
     * /api/districts/{id}:
     *   delete:
     *     summary: Delete a district
     *     description: Delete an existing district with the specified ID.
     *     tags:
     *       - /api/districts - Districts
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the district to be deleted.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully deleted the district.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: district not found
     *       500:
     *         description: Internal server error
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.districtController.destroy.bind(this.districtController),
    );
  }
}
export default new DistrictRoute().router;
