import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreatePurchaseOrderInput:
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
 *         quantityTotal:
 *           type: integer
 *           description: The total quantity in the purchase order.
 *         totalPrice:
 *           type: number
 *           description: The total price of the purchase order.
 *         discount:
 *           type: number
 *           description: The discount amount of the purchase order.
 *         totalTaxPrice:
 *           type: number
 *           description: The total tax price of the purchase order.
 *         debtAmount:
 *           type: number
 *           description: The debt amount of the purchase order.
 *         productItems:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/CreatePurchaseOrderProductItem'
 *
 *     CreatePurchaseOrderProductItem:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The ID of the product associated with the purchase order.
 *         quantity:
 *           type: integer
 *           description: The quantity of the product in the purchase order.
 *         price:
 *           type: number
 *           description: The price of the product in the purchase order.
 *         discount:
 *           type: number
 *           description: The discount amount for the product in the purchase order.
 *         totalPrice:
 *           type: number
 *           description: The total price for the product in the purchase order.
 *
 *     CreatePurchaseOrderResponse:
 *       type: object
 *       properties:
 *         purchaseOrder:
 *           $ref: '#/components/schemas/PurchaseOrder'
 *         productItems:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/PurchaseOrderProductItem'
 *     PurchaseOrder:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the purchase order.
 *         voucherTypeId:
 *           type: integer
 *           description: The ID of the voucher type associated with the purchase order.
 *         supplierId:
 *           type: integer
 *           description: The ID of the supplier associated with the purchase order.
 *         staffId:
 *           type: integer
 *           description: The ID of the staff associated with the purchase order.
 *         code:
 *           type: string
 *           description: The code of the purchase order.
 *         deliveredDate:
 *           type: string
 *           format: date-time
 *           description: The date and time when the purchase order was delivered.
 *         note:
 *           type: string
 *           description: Additional note for the purchase order.
 *         quantityTotal:
 *           type: integer
 *           description: The total quantity of items in the purchase order.
 *         totalPrice:
 *           type: string
 *           format: bigInt
 *           description: The total price of the purchase order.
 *         discount:
 *           type: string
 *           format: bigInt
 *           description: The discount amount applied to the purchase order.
 *         totalTaxPrice:
 *           type: string
 *           format: bigInt
 *           description: The total price including tax for the purchase order.
 *         debtAmount:
 *           type: string
 *           format: bigInt
 *           description: The debt amount of the purchase order.
 *         importDate:
 *           type: string
 *           format: date-time
 *           description: The date and time when the purchase order was imported.
 *         paymentStatusId:
 *           type: integer
 *           description: The ID of the payment status associated with the purchase order.
 *         importStatusId:
 *           type: integer
 *           description: The ID of the import status associated with the purchase order.
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the purchase order was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the purchase order was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the purchase order was deleted (if applicable).
 *     PurchaseOrderProductItem:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the purchase order product item.
 *         purchaseOrderId:
 *           type: integer
 *           description: The ID of the purchase order associated with the product item.
 *         productId:
 *           type: integer
 *           description: The ID of the product associated with the product item.
 *         quantity:
 *           type: integer
 *           description: The quantity of the product in the purchase order.
 *         price:
 *           type: string
 *           description: The price of the product in the purchase order.
 *         discount:
 *           type: string
 *           description: The discount amount for the product in the purchase order.
 *         totalPrice:
 *           type: string
 *           description: The total price for the product in the purchase order.
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the purchase order product item was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the purchase order product item was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the purchase order product item was deleted (if applicable).
 */
const createPurchaseOrderSchema = Joi.object({
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
  productItems: Joi.array().required(),
});
export default createPurchaseOrderSchema;
