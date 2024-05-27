import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateStatusInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *           description: The name of the status.
 *         key:
 *           type: string
 *           description: The key representing the status.
 *         statusTypeId:
 *           type: integer
 *           description: The ID of the status type that this status belongs to.
 *       required:
 *         - name
 *         - key
 *         - statusTypeId
 */
const updateStatusSchema = Joi.object({
  name: Joi.string().required(),
  key: Joi.string().required(),
  statusTypeId: Joi.number().required(),
});
export default updateStatusSchema;
