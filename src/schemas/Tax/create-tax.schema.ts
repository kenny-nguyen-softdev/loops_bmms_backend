import * as Joi from 'joi';

/**
 * @openapi
 * components:
 *   schemas:
 *     CreateTaxInput:
 *       type: object
 *       properties:
 *         taxTypeId:
 *           type: integer
 *         name:
 *           type: string
 *         code:
 *           type: string
 *         percentageNumber:
 *           type: number
 *       required:
 *         - taxTypeId
 *         - name
 *         - code
 *         - percentageNumber
 *     Tax:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         taxTypeId:
 *           type: integer
 *         name:
 *           type: string
 *         code:
 *           type: string
 *         percentageNumber:
 *           type: number
 *         createdAt:
 *           type: string
 *           format: date-time
 *         updatedAt:
 *           type: string
 *           format: date-time
 *         deletedAt:
 *           type: string
 *           format: date-time
 *         TaxType:
 *           $ref: '#/components/schemas/TaxTypeResponse'
 *     TaxTypeResponse:
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
const createTaxSchema = Joi.object({
  name: Joi.string().required(),
  code: Joi.string().allow(null),
  percentageNumber: Joi.number().required(),
  taxTypeId: Joi.number().required(),
});
export default createTaxSchema;
