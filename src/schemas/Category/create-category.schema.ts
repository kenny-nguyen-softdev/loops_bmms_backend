import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateCategoryInput:
 *       type: object
 *       properties:
 *         categoryId:
 *           type: integer
 *         name:
 *           type: string
 *           required: true
 *     CreateCategoryResponse:
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
 *     GetListCategoryResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         categoryId:
 *           type: integer
 *         name:
 *           type: string
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
 *         _children:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/GetListCategoryResponse'
 *     GetOneCategoryResponse:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                   categoryId:
 *                     type: integer
 *                   name:
 *                     type: string
 *                   isActive:
 *                     type: boolean
 *                   createdAt:
 *                     type: string
 *                     format: date-time
 *                   updatedAt:
 *                     type: string
 *                     format: date-time
 *                   deletedAt:
 *                     type: string
 *                     format: date-time
 *     ReactivatedCategoryResponse:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                   categoryId:
 *                     type: integer
 *                   name:
 *                     type: string
 *                   isActive:
 *                     type: boolean
 *                   createdAt:
 *                     type: string
 *                     format: date-time
 *                   updatedAt:
 *                     type: string
 *                     format: date-time
 *                   deletedAt:
 *                     type: string
 *                     format: date-time
 */
const createCategorySchema = Joi.object({
  name: Joi.string().required(),
  categoryId: Joi.number().allow(null),
  isActive: Joi.boolean(),
});
export default createCategorySchema;
