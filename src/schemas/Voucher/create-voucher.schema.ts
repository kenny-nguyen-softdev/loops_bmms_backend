import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateVoucherInput:
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
 *         recordedDate:
 *           type: string
 *           format: date-time
 *           description: The date and time when the voucher was recorded.
 *     Voucher:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the voucher.
 *         voucherTypeId:
 *           type: integer
 *           description: The ID of the voucher type associated with the voucher.
 *         code:
 *           type: string
 *           description: The code of the voucher.
 *         value:
 *           type: string
 *           format: bigInt
 *           description: The value of the voucher.
 *         description:
 *           type: string
 *           description: The description of the voucher.
 *         recordedDate:
 *           type: string
 *           format: date-time
 *           description: The date and time when the voucher was recorded.
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
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the voucher was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the voucher was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the voucher was deleted (if applicable).
 */
const createVoucherSchema = Joi.object({
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
export default createVoucherSchema;
