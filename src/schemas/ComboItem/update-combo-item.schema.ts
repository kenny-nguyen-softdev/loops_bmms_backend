import Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateComboItemInput:
 *       type: object
 *       properties:
 *         comboId:
 *           type: integer
 *           description: The ID of the combo associated with the combo item.
 *         serviceId:
 *           type: integer
 *           description: The ID of the service associated with the combo item.
 *         productId:
 *           type: integer
 *           description: The ID of the product associated with the combo item.
 *         quantity:
 *           type: integer
 *           description: The quantity of the combo item.
 */
const updateComboItemSchema = Joi.object({
  comboId: Joi.number().allow(null),
  serviceId: Joi.number().allow(null),
  productId: Joi.number().allow(null),
  quantity: Joi.number().allow(null),
});
export default updateComboItemSchema;
