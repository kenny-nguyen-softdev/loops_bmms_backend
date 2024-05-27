import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateDistrictInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *           description: The name of the District.
 *         prefix:
 *           type: string
 *           description: The prefix of the District (e.g., "Xã").
 *         provinceId:
 *           type: integer
 *           description: The ID of the province that this District belongs to.
 *       required:
 *         - name
 *         - prefix
 *         - provinceId
 *     District:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the District.
 *         provinceId:
 *           type: integer
 *           description: The ID of the province that this District belongs to.
 *         name:
 *           type: string
 *           description: The name of the District.
 *         prefix:
 *           type: string
 *           description: The prefix representing the District.
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the District was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the District was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the District was deleted (if applicable).
 */
const createDistrictSchema = Joi.object({
  name: Joi.string().required(),
  provinceId: Joi.number().required(),
  prefix: Joi.string().required(),
});
export default createDistrictSchema;
