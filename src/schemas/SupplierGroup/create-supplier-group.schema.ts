import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateSupplierGroupInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *       required:
 *         - name
 *     SupplierGroup:
 *         type: object
 *         properties:
 *           id:
 *             type: integer
 *           name:
 *             type: string
 *           createdAt:
 *             type: string
 *             format: date-time
 *           updatedAt:
 *             type: string
 *             format: date-time
 *           deletedAt:
 *             type: string
 *             format: date-time
 */
const createSupplierGroupSchema = Joi.object({
  name: Joi.string().required(),
});
export default createSupplierGroupSchema;
