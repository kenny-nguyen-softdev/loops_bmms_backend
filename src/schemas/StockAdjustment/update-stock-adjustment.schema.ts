import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateStockAdjustmentInput:
 *       type: object
 *       properties:
 *         createdStaffId:
 *           type: integer
 *         checkingStaffId:
 *           type: integer
 *         adjustmentStaffId:
 *           type: integer
 *         note:
 *           type: string
 *         adjustmentDate:
 *           type: string
 *           format: date-time
 *         adjustmentStatusId:
 *           type: integer
 *         productItems:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/StockAdjustmentProductItemInput'
 *
 *     UpdateStockAdjustmentResponse:
 *       type: object
 *       properties:
 *         updatedStockAdjustment:
 *           $ref: '#/components/schemas/StockAdjustment'
 *         updatedProductItems:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/StockAdjustmentProductItem'
 * 
 *     BalanceInventoryResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The ID of the stock adjustment.
 *         createdStaffId:
 *           type: integer
 *           description: The ID of the staff member who created the stock adjustment.
 *         checkingStaffId:
 *           type: integer
 *           description: The ID of the staff member who checked the stock adjustment.
 *         adjustmentStaffId:
 *           type: integer
 *           description: The ID of the staff member who performed the stock adjustment.
 *         code:
 *           type: string
 *           description: The code associated with the stock adjustment.
 *         note:
 *           type: string
 *           description: Additional notes or comments regarding the stock adjustment.
 *         adjustmentDate:
 *           type: string
 *           format: date-time
 *           description: The date and time when the stock adjustment was performed.
 *         adjustmentStatusId:
 *           type: integer
 *           description: The ID of the stock adjustment status.
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the stock adjustment was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the stock adjustment was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the stock adjustment was deleted (if deleted).
 *         adjustmentStatus:
 *           $ref: '#/components/schemas/Status'
 *         stockAdjustmentProductItems:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/StockAdjustmentProductItem'
 */

const updateStockAdjustmentSchema = Joi.object({
  createdStaffId: Joi.number().required(),
  checkingStaffId: Joi.number().required(),
  adjustmentStaffId: Joi.number().allow(null),
  note: Joi.string().allow(''),
  adjustmentDate: Joi.date().allow(null),
  adjustmentStatusId: Joi.number().required(),
  productItems: Joi.array().required(),
});
export default updateStockAdjustmentSchema;
