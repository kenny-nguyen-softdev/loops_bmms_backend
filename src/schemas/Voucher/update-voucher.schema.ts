import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateVoucherInput:
 *       type: object
 *       properties:
 *         voucherTypeId:
 *           type: integer
 *           description: The ID of the voucher type associated with the voucher.
 *         value:
 *           type: string
 *           description: The value of the voucher.
 *         description:
 *           type: string
 *           description: The description of the voucher.
 *         voucherGroupId:
 *           type: integer
 *           description: The ID of the voucher group associated with the voucher.
 *         customerId:
 *           type: integer
 *           description: The ID of the customer associated with the voucher.
 *         supplierId:
 *           type: integer
 *           description: The ID of the supplier associated with the voucher.
 *         staffId:
 *           type: integer
 *           description: The ID of the staff associated with the voucher.
 *         personGroupTypeId:
 *           type: integer
 *           description: The ID of the person group type associated with the voucher.
 *         paymentMethodId:
 *           type: integer
 *           description: The ID of the payment method associated with the voucher.
 */
const updateVoucherSchema = Joi.object({
  voucherTypeId: Joi.number().required(),
  value: Joi.number().required(),
  description: Joi.string().allow(''),
  recordedDate: Joi.date(),
  voucherGroupId: Joi.number().required(),
  customerId: Joi.number().allow(null),
  supplierId: Joi.number().allow(null),
  staffId: Joi.number().allow(null),
  personGroupTypeId: Joi.number().allow(null),
  paymentMethodId: Joi.number().allow(null),
});
export default updateVoucherSchema;
