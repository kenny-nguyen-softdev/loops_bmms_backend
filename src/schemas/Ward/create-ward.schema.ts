import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateWardInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *           description: The name of the ward.
 *         prefix:
 *           type: string
 *           description: The prefix of the ward (e.g., "Xã").
 *         districtId:
 *           type: integer
 *           description: The ID of the district that this ward belongs to.
 *       required:
 *         - name
 *         - prefix
 *         - districtId
 *     Ward:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the ward.
 *         districtId:
 *           type: integer
 *           description: The ID of the district that this ward belongs to.
 *         name:
 *           type: string
 *           description: The name of the ward.
 *         prefix:
 *           type: string
 *           description: The prefix representing the ward.
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the ward was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the ward was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the ward was deleted (if applicable).
 */
const createWardSchema = Joi.object({
  name: Joi.string().required(),
  districtId: Joi.number().required(),
  prefix: Joi.string().required(),
});
export default createWardSchema;
