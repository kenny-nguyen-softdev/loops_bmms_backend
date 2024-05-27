import Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateComboItemInput:
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
 *     ComboItem:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the combo item.
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
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the combo item was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the combo item was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the combo item was deleted (if applicable).
 */
const createComboItemSchema = Joi.object({
  comboId: Joi.number().allow(null),
  serviceId: Joi.number().allow(null),
  productId: Joi.number().allow(null),
  quantity: Joi.number().allow(null),
});
export default createComboItemSchema;
