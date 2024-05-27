import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateStatusInput:
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
 *     Status:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the status.
 *         statusTypeId:
 *           type: integer
 *           description: The ID of the status type that this status belongs to.
 *         name:
 *           type: string
 *           description: The name of the status.
 *         key:
 *           type: string
 *           description: The key representing the status.
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the status was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the status was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the status was deleted (if applicable).
 */
const createStatusSchema = Joi.object({
  name: Joi.string().required(),
  key: Joi.string().required(),
  statusTypeId: Joi.number().required(),
});
export default createStatusSchema;
