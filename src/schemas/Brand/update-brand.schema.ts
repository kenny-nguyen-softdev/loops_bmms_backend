import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateBrandInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *     UpdateBrandResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         name:
 *           type: string
 *           required: true
 *         isActive:
 *           type: boolean
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
const updateBrandSchema = Joi.object({
  name: Joi.string().required(),
  isActive: Joi.boolean(),
});
export default updateBrandSchema;
