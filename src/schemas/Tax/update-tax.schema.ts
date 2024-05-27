import * as Joi from 'joi';

/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateTaxInput:
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
 */
const updateTaxSchema = Joi.object({
  name: Joi.string().required(),
  code: Joi.string().allow(null),
  percentageNumber: Joi.number().required(),
  taxTypeId: Joi.number().required(),
});
export default updateTaxSchema;
