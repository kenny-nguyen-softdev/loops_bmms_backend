import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateWardInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *           description: The name of the ward.
 *         prefix:
 *           type: string
 *           description: The prefix of the ward (e.g., "Xã").
 *         districtId:
 *           type: integer
 *           description: The ID of the district that this ward belongs to.
 *       required:
 *         - name
 *         - prefix
 *         - districtId
 */
const updateWardSchema = Joi.object({
  name: Joi.string().required(),
  districtId: Joi.number().required(),
  prefix: Joi.string().required(),
});
export default updateWardSchema;
