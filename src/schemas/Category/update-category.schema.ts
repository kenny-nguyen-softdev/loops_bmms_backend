import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateCategoryInput:
 *       type: object
 *       properties:
 *         categoryId:
 *           type: integer
 *         name:
 *           type: string
 *     UpdateCategoryResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         categoryId:
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
const updateCategorySchema = Joi.object({
  name: Joi.string().required(),
  categoryId: Joi.number().allow(null),
  isActive: Joi.boolean(),
});
export default updateCategorySchema;
