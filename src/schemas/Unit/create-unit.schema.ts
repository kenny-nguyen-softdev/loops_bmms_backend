import * as Joi from 'joi';

/**
 * @openapi
 * components:
 *   schemas:
*     CreateUnitRequest:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *         unitTypeId:
 *           type: integer
 *     CreateUnitResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         unitTypeId:
 *           type: integer
 *         name:
 *           type: string
 *         createdAt:
 *           type: string
 *           format: date-time
 *         updatedAt:
 *           type: string
 *           format: date-time
 *         deletedAt:
 *           type: string
 *           format: date-time
 *     GetUnitResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         unitTypeId:
 *           type: integer
 *         name:
 *           type: string
 *         createdAt:
 *           type: string
 *           format: date-time
 *         updatedAt:
 *           type: string
 *           format: date-time
 *         deletedAt:
 *           type: string
 *           format: date-time
 *     GetListUnitResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         unitTypeId:
 *           type: integer
 *         name:
 *           type: string
 *         createdAt:
 *           type: string
 *           format: date-time
 *         updatedAt:
 *           type: string
 *           format: date-time
 *         deletedAt:
 *           type: string
 *           format: date-time
 *         UnitType:
 *           $ref: '#/components/schemas/UnitTypeResponse'
 *     UnitTypeResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         name:
 *           type: string
 *         key:
 *           type: string
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
const createUnitSchema = Joi.object({
  name: Joi.string().required(),
  unitTypeId: Joi.number().required(),
});
export default createUnitSchema;
