import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdatePurchaseOrderInput:
 *       type: object
 *       properties:
 *         voucherTypeId:
 *           type: integer
 *           description: The ID of the voucher type associated with the purchase order.
 *         supplierId:
 *           type: integer
 *           description: The ID of the supplier associated with the purchase order.
 *         staffId:
 *           type: integer
 *           description: The ID of the staff associated with the purchase order.
 *         deliveredDate:
 *           type: string
 *           format: date-time
 *           description: The date and time when the purchase order was delivered.
 *         importDate:
 *           type: string
 *           format: date-time
 *           description: The date and time when the purchase order was imported.
 *         note:
 *           type: string
 *           description: The note associated with the purchase order.
 *         paymentStatusId:
 *           type: integer
 *           description: The ID of the payment status associated with the purchase order.
 *         importStatusId:
 *           type: integer
 *           description: The ID of the import status associated with the purchase order.
 */
const updatePurchaseOrderSchema = Joi.object({
  voucherTypeId: Joi.number().required(),
  supplierId: Joi.number().required(),
  staffId: Joi.number().allow(null),
  deliveredDate: Joi.date().allow(null),
  importDate: Joi.date().allow(null),
  note: Joi.string().allow(''),
  quantityTotal: Joi.number().allow(null),
  totalPrice: Joi.number().allow(null),
  discount: Joi.number().allow(null),
  totalTaxPrice: Joi.number().allow(null),
  debtAmount: Joi.number().allow(null),
  paymentStatusId: Joi.number().required(),
  importStatusId: Joi.number().required(),
});
export default updatePurchaseOrderSchema;
