import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateUnitRequest:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *         unitTypeId:
 *           type: integer
 *
 *     UpdateUnitResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         name:
 *           type: string
 *         unitTypeId:
 *           type: integer
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
const updateUnitSchema = Joi.object({
  name: Joi.string().required(),
  unitTypeId: Joi.number().required(),
});
export default updateUnitSchema;
