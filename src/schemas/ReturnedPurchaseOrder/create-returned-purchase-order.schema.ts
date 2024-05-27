import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateReturnedPurchaseOrderInput:
 *       type: object
 *       properties:
 *         voucherTypeId:
 *           type: integer
 *         note:
 *           type: string
 *         returnedQuantityTotal:
 *           type: integer
 *         discount:
 *           type: number
 *         totalTaxPrice:
 *           type: number
 *         refundPriceTotal:
 *           type: number
 *         receivedRefundAmount:
 *           type: number
 *         refundDate:
 *           type: string
 *           format: date-time
 *         purchaseOrderId:
 *           type: integer
 *         paymentMethodId:
 *           type: integer
 *         returnedStatusId:
 *           type: integer
 *         refundStatusId:
 *           type: integer
 *         productItems:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/ReturnedPurchaseOrderInputProductItem'
 *     ReturnedPurchaseOrderInputProductItem:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         quantity:
 *           type: integer
 *         price:
 *           type: number
 *         discount:
 *           type: number
 *         totalPrice:
 *           type: number
 *     CreateReturnedPurchaseOrderResponse:
 *       type: object
 *       properties:
 *         returnedPurchaseOrder:
 *           $ref: '#/components/schemas/ReturnedPurchaseOrder'
 *         productItems:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/ReturnPurchaseOrderProductItem'
 *     ReturnedPurchaseOrder:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         voucherTypeId:
 *           type: integer
 *         note:
 *           type: string
 *         returnedQuantityTotal:
 *           type: integer
 *         discount:
 *           type: string
 *           format: bigInt
 *         totalTaxPrice:
 *           type: string
 *           format: bigInt
 *         refundPriceTotal:
 *           type: string
 *           format: bigInt
 *         receivedRefundAmount:
 *           type: string
 *           format: bigInt
 *         refundDate:
 *           type: string
 *           format: date-time
 *         purchaseOrderId:
 *           type: integer
 *         paymentMethodId:
 *           type: integer
 *         returnedStatusId:
 *           type: integer
 *         refundStatusId:
 *           type: integer
 *         createdAt:
 *           type: string
 *           format: date-time
 *         updatedAt:
 *           type: string
 *           format: date-time
 *         deletedAt:
 *           type: string
 *           format: date-time
 *     ReturnPurchaseOrderProductItem:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         purchaseOrderId:
 *           type: integer
 *         productId:
 *           type: integer
 *         quantity:
 *           type: integer
 *         price:
 *           type: string
 *         discount:
 *           type: string
 *         totalPrice:
 *           type: string
 *         createdAt:
 *           type: string
 *           format: date-time
 *         updatedAt:
 *           type: string
 *           format: date-time
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 */
const createReturnedPurchaseOrderSchema = Joi.object({
  voucherTypeId: Joi.number().required(),
  note: Joi.string().allow(''),
  returnedQuantityTotal: Joi.number().allow(null),
  discount: Joi.number().allow(null),
  totalTaxPrice: Joi.number().required(),
  refundPriceTotal: Joi.number().required(),
  receivedRefundAmount: Joi.number().required(),
  refundDate: Joi.date().allow(null),
  purchaseOrderId: Joi.number().required(),
  paymentMethodId: Joi.number().required(),
  returnedStatusId: Joi.number().required(),
  refundStatusId: Joi.number().required(),
  productItems: Joi.array().required(),
});
export default createReturnedPurchaseOrderSchema;
