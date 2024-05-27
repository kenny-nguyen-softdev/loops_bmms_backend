import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdatePurchaseOrderImportStatusInput:
 *       type: object
 *       required:
 *         - statusId
 *       properties:
 *         statusId:
 *           type: integer
 *           description: ID of the import status to update.
 */
const updatePurchaseOrderImportStatusSchema = Joi.object({
  statusId: Joi.number().required(),
});
export default updatePurchaseOrderImportStatusSchema;
