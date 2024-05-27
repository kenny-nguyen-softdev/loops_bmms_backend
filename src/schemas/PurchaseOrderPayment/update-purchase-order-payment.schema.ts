import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdatePurchaseOrderPaymentInput:
 *       type: object
 *       properties:
 *         purchaseOrderId:
 *           type: integer
 *           description: The ID of the purchase order associated with the payment.
 *         amount:
 *           type: number
 *           description: The amount of the payment.
 *         paidDate:
 *           type: string
 *           format: date-time
 *           description: The date and time when the payment was made.
 *         paymentMethodId:
 *           type: integer
 *           description: The ID of the payment method used for the payment.
 *       required:
 *         - purchaseOrderId
 *         - amount
 *         - paidDate
 */
const updatePurchaseOrderPaymentSchema = Joi.object({
  purchaseOrderId: Joi.number().required(),
  amount: Joi.number().required(),
  paidDate: Joi.date().required(),
  paymentMethodId: Joi.number(),
});
export default updatePurchaseOrderPaymentSchema;
