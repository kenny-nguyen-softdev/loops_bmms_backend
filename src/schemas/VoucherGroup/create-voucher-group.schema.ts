import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateVoucherGroupInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *           description: The name of the voucher group.
 *         code:
 *           type: string
 *           description: The code of the voucher group.
 *         description:
 *           type: string
 *           description: The description of the voucher group.
 *         voucherGroupTypeId:
 *           type: integer
 *           description: The ID of the voucher group type associated with the voucher group.
 *       required:
 *         - name
 *         - voucherGroupTypeId
 *     VoucherGroup:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the voucher group.
 *         name:
 *           type: string
 *           description: The name of the voucher group.
 *         code:
 *           type: string
 *           description: The code of the voucher group.
 *         description:
 *           type: string
 *           description: The description of the voucher group.
 *         voucherGroupTypeId:
 *           type: integer
 *           description: The ID of the voucher group type associated with the voucher group.
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the voucher group was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the voucher group was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the voucher group was deleted (if applicable).
 */
const createVoucherGroupSchema = Joi.object({
  name: Joi.string().required(),
  code: Joi.string().allow(''),
  description: Joi.string().allow(''),
  voucherGroupTypeId: Joi.number().required(),
});
export default createVoucherGroupSchema;
