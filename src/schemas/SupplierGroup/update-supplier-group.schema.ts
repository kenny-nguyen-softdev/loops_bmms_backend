import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateSupplierGroupInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *       required:
 *         - name
 */
const updateSupplierGroupSchema = Joi.object({
  name: Joi.string().required(),
});
export default updateSupplierGroupSchema;
