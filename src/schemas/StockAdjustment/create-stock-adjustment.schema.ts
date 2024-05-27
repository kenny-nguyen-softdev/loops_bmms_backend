import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     StockAdjustmentInput:
 *       type: object
 *       properties:
 *         createdStaffId:
 *           type: integer
 *           required: true
 *         checkingStaffId:
 *           type: integer
 *           required: true
 *         adjustmentStaffId:
 *           type: integer
 *         note:
 *           type: string
 *         adjustmentDate:
 *           type: string
 *           format: date-time
 *         adjustmentStatusId:
 *           type: integer
 *           required: true
 *         productItems:
 *           type: array
 *           required: true
 *           items:
 *             $ref: '#/components/schemas/StockAdjustmentProductItemInput'
 *
 *     StockAdjustmentResponse:
 *       type: object
 *       properties:
 *         stockAdjustment:
 *           $ref: '#/components/schemas/StockAdjustment'
 *         productItems:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/StockAdjustmentProductItem'
 *
 *     StockAdjustmentProductItemInput:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           required: true
 *         lossReasonId:
 *           type: integer
 *           required: true
 *         actualQuantity:
 *           type: integer
 *           required: true
 *         quantityDifference:
 *           type: integer
 *           required: true
 *         note:
 *           type: string
 *           required: true
 *
 *     StockAdjustmentProductItem:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         stockAdjustmentId:
 *           type: integer
 *         productId:
 *           type: integer
 *         lossReasonId:
 *           type: integer
 *         actualQuantity:
 *           type: integer
 *         quantityDifference:
 *           type: integer
 *         note:
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
 *     StockAdjustment:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         createdStaffId:
 *           type: integer
 *         checkingStaffId:
 *           type: integer
 *         adjustmentStaffId:
 *           type: integer
 *         code:
 *           type: string
 *         note:
 *           type: string
 *         adjustmentDate:
 *           type: string
 *           format: date-time
 *         adjustmentStatusId:
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
const createStockAdjustmentSchema = Joi.object({
  createdStaffId: Joi.number().required(),
  checkingStaffId: Joi.number().required(),
  adjustmentStaffId: Joi.number().allow(null),
  note: Joi.string().allow(''),
  adjustmentDate: Joi.date().allow(null),
  adjustmentStatusId: Joi.number().required(),
  productItems: Joi.array().required(),
});
export default createStockAdjustmentSchema;
