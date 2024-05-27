import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateVoucherGroupInput:
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
 */
const updateVoucherGroupSchema = Joi.object({
  name: Joi.string().required(),
  code: Joi.string().allow(''),
  description: Joi.string().allow(''),
  voucherGroupTypeId: Joi.number().required(),
});
export default updateVoucherGroupSchema;
