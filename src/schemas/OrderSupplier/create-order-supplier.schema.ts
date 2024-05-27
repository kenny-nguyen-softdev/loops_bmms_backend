import Joi from "joi";
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateOrderSupplierInput:
 *       type: object
 *       properties:
 *         supplierId:
 *           type: integer
 *           required: true
 *         staffId:
 *           type: integer
 *         importDate:
 *           type: string
 *           format: date-time
 *         deliveredDate:
 *           type: string
 *           format: date-time
 *         note:
 *           type: string
 *         quantityTotal:
 *           type: integer
 *         totalPrice:
 *           type: number
 *         discount:
 *           type: number
 *         totalTaxPrice:
 *           type: number
 *         importStatusId:
 *           type: integer
 *           required: true
 *         productItems:
 *           type: array
 *           required: true
 *           items:
 *             $ref: '#/components/schemas/OrderSupplierProductItemInput'
 *     OrderSupplierProductItemInput:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           required: true
 *         quantity:
 *           type: integer
 *           required: true
 *         price:
 *           type: number
 *           required: true
 *         discount:
 *           type: number
 *           required: true
 *         totalPrice:
 *           type: number
 *           required: true
 *     ProductItemResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         orderSupplierId:
 *           type: integer
 *         productId:
 *           type: integer
 *         quantity:
 *           type: integer
 *         discount:
 *           type: string
 *           format: bigInt
 *         totalPrice:
 *           type: string
 *           format: bigInt
 *         createdAt:
 *           type: string
 *           format: date-time
 *         updatedAt:
 *           type: string
 *           format: date-time
 *         deletedAt:
 *           type: string
 *           format: date-time
 *
 *     CreateOrderSupplierResponse:
 *       type: object
 *       properties:
 *         orderSupplier:
 *           $ref: '#/components/schemas/OrderSupplier'
 *         productItems:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/ProductItemResponse'
 *     OrderSupplier:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         supplierId:
 *           type: integer
 *         staffId:
 *           type: integer
 *         importDate:
 *           type: string
 *           format: date-time
 *         deliveredDate:
 *           type: string
 *           format: date-time
 *         code:
 *           type: string
 *         note:
 *           type: string
 *         quantityTotal:
 *           type: integer
 *         totalPrice:
 *           type: string
 *           format: bigInt
 *         discount:
 *           type: string
 *           format: bigInt
 *         totalTaxPrice:
 *           type: string
 *           format: bigInt
 *         importStatusId:
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
 */
const createOrderSupplierSchema = Joi.object({
    supplierId: Joi.number().required(),
    staffId: Joi.number().allow(null),
    importDate: Joi.date().allow(null),
    deliveredDate: Joi.date().allow(null),
    note: Joi.string().allow(''),
    quantityTotal: Joi.number().allow(null),
    totalPrice: Joi.number().allow(null),
    discount: Joi.number().allow(null),
    totalTaxPrice: Joi.number().allow(null),
    importStatusId: Joi.number().required(),
    productItems: Joi.array().required(),
  });
  export default createOrderSupplierSchema;