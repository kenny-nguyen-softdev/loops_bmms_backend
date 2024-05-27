import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateProvinceInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *           description: The name of the province.
 *         code:
 *           type: string
 *           description: The code of the province (e.g., "63000").
 *       required:
 *         - name
 *         - code
 *     Province:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the province.
 *         name:
 *           type: string
 *           description: The name of the province.
 *         code:
 *           type: string
 *           description: The code representing the province.
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the province was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the province was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the province was deleted (if applicable).
 */

const createProvinceSchema = Joi.object({
  name: Joi.string().required(),
  code: Joi.string().required(),
});
export default createProvinceSchema;
