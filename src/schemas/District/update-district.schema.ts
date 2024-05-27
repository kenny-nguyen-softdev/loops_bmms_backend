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
 */
const updateDistrictSchema = Joi.object({
  name: Joi.string().required(),
  provinceId: Joi.number().required(),
  prefix: Joi.string().required(),
});
export default updateDistrictSchema;
