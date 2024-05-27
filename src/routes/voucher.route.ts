import { Router } from 'express';
import VoucherController from '../app/controllers/voucher.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createVoucherSchema, updateVoucherSchema } from '../schemas';

class VoucherRoute {
  router = Router();
  voucherController: VoucherController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.voucherController = new VoucherController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/vouchers:
     *   get:
     *     summary: Get all vouchers
     *     description: Retrieve a list of all vouchers.
     *     tags:
     *       - /api/vouchers - Vouchers
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the voucher group to filter vouchers.(VoucherType|Supplier|Staff|Customer|VoucherGroup|PersonGroupType|PaymentMethod)
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
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get voucher have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get voucher have 'id' not in 5-66).
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
     *         description: Successfully retrieved the list of vouchers.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/Voucher'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.voucherController.index.bind(this.voucherController));
    /**
     * @openapi
     * /api/vouchers/{id}:
     *   get:
     *     summary: Get a voucher by ID
     *     description: Retrieve a voucher by its ID.
     *     tags:
     *       - /api/vouchers - Vouchers
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: The ID of the voucher to retrieve.
     *       - in: query
     *         name: include
     *         description: The include of the voucher group to filter vouchers.(VoucherType|Supplier|Staff|Customer|VoucherGroup|PersonGroupType|PaymentMethod)
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the voucher.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Voucher'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Voucher not found
     *       500:
     *         description: Internal server error
     */
    this.router.get('/:id', this.authMiddleware.handler(), this.voucherController.find.bind(this.voucherController));
    /**
     * @openapi
     * /api/vouchers:
     *   post:
     *     summary: Create a new voucher
     *     description: Create a new voucher.
     *     tags:
     *       - /api/vouchers - Vouchers
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateVoucherInput'
     *     responses:
     *       201:
     *         description: Successfully created the voucher.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Voucher'
     *       400:
     *         description: Bad request - Validation error
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createVoucherSchema),
      this.voucherController.create.bind(this.voucherController),
    );
    /**
     * @openapi
     * /api/vouchers/{id}:
     *   put:
     *     summary: Update a voucher
     *     description: Update an existing voucher by its ID.
     *     tags:
     *       - /api/vouchers - Vouchers
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: The ID of the voucher to update.
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateVoucherInput'
     *     responses:
     *       200:
     *         description: Successfully updated the voucher.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Voucher'
     *       400:
     *         description: Bad request - Validation error
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Voucher not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateVoucherSchema),
      this.voucherController.update.bind(this.voucherController),
    );
  }
}
export default new VoucherRoute().router;
