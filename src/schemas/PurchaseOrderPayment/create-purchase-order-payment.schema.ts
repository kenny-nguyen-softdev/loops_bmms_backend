import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreatePurchaseOrderPaymentInput:
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
 *       example:
 *         purchaseOrderId: 2
 *         amount: 2000000
 *         paidDate: "07/11/2023 11:55:33"
 *         paymentMethodId: 3
 *     PurchaseOrderPayment:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the purchase order payment.
 *         purchaseOrderId:
 *           type: integer
 *           description: The ID of the purchase order associated with the payment.
 *         amount:
 *           type: string
 *           format: bigInt
 *           description: The amount of the payment.
 *         paidDate:
 *           type: string
 *           format: date-time
 *           description: The date and time when the payment was made.
 *         paymentMethodId:
 *           type: integer
 *           description: The ID of the payment method used for the payment.
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the purchase order payment was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the purchase order payment was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the purchase order payment was deleted (if applicable).
 */
const createPurchaseOrderPaymentSchema = Joi.object({
  purchaseOrderId: Joi.number().required(),
  amount: Joi.number().required(),
  paidDate: Joi.date().required(),
  paymentMethodId: Joi.number(),
});
export default createPurchaseOrderPaymentSchema;
