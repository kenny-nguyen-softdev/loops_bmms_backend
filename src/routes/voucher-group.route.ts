import { Router } from 'express';
import VoucherGroupController from '../app/controllers/voucher-group.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createVoucherGroupSchema, updateVoucherGroupSchema } from '../schemas';

class VoucherGroupRoute {
  router = Router();
  voucherGroupController: VoucherGroupController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.voucherGroupController = new VoucherGroupController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/voucher-groups:
     *   get:
     *     summary: Get all voucher groups
     *     description: Retrieve a list of all voucher groups.
     *     tags:
     *       - /api/voucher-groups - Voucher Groups
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the....(VoucherGroupType)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get voucher-group have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get voucher-group have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of voucher groups.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/VoucherGroup'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/',
      this.authMiddleware.handler(),
      this.voucherGroupController.index.bind(this.voucherGroupController),
    );
    /**
     * @openapi
     * /api/voucher-groups/{id}:
     *   get:
     *     summary: Get a voucher group by ID
     *     description: Retrieve a voucher group by its unique ID.
     *     tags:
     *       - /api/voucher-groups - Voucher Groups
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         schema:
     *           type: integer
     *         description: The ID of the voucher group to retrieve.
     *       - in: query
     *         name: include
     *         description: The include of the VoucherGroupType.(VoucherGroupType)
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the voucher group.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/VoucherGroup'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Voucher group not found
     *       500:
     *         description: Internal server error
     */
    this.router.get(
      '/:id',
      this.authMiddleware.handler(),
      this.voucherGroupController.find.bind(this.voucherGroupController),
    );
    /**
     * @openapi
     * /api/voucher-groups:
     *   post:
     *     summary: Create a new voucher group
     *     description: Create a new voucher group with the provided details.
     *     tags:
     *       - /api/voucher-groups - Voucher Groups
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateVoucherGroupInput'
     *     responses:
     *       201:
     *         description: Voucher group created successfully.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/VoucherGroup'
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
      this.validationMiddleware.handler(createVoucherGroupSchema),
      this.voucherGroupController.create.bind(this.voucherGroupController),
    );
    /**
     * @openapi
     * /api/voucher-groups/{id}:
     *   put:
     *     summary: Update a voucher group
     *     description: Update an existing voucher group with the provided details.
     *     tags:
     *       - /api/voucher-groups - Voucher Groups
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: The ID of the voucher group to update.
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateVoucherGroupInput'
     *     responses:
     *       200:
     *         description: Voucher group updated successfully.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/VoucherGroup'
     *       400:
     *         description: Bad request. Invalid input data.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Voucher group not found.
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateVoucherGroupSchema),
      this.voucherGroupController.update.bind(this.voucherGroupController),
    );
    /**
     * @openapi
     * /api/voucher-groups/{id}:
     *   delete:
     *     summary: Delete a voucher group
     *     description: Delete an existing voucher group by its ID.
     *     tags:
     *       - /api/voucher-groups - Voucher Groups
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: The ID of the voucher group to delete.
     *     responses:
     *       200:
     *         description: Voucher group deleted successfully.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/VoucherGroup'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Voucher group not found.
     *       500:
     *         description: Internal server error
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.voucherGroupController.destroy.bind(this.voucherGroupController),
    );
  }
}
export default new VoucherGroupRoute().router;
