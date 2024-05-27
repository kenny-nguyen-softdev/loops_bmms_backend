import Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateCustomerInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *           description: The name of the customer.
 *         email:
 *           type: string
 *           format: email
 *           description: The email of the customer.
 *         phoneNumber:
 *           type: string
 *           description: The phone number of the customer.
 *         birthday:
 *           type: string
 *           format: date
 *           description: The birthday of the customer (YYYY-MM-DD).
 *         address:
 *           type: string
 *           description: The address of the customer.
 *         wardId:
 *           type: integer
 *           description: The ID of the ward where the customer resides.
 *         personGroupTypeId:
 *           type: integer
 *           description: The ID of the person group type associated with the customer.
 *       required:
 *         - name
 *         - personGroupTypeId
 */
const updateCustomerSchema = Joi.object({
  name: Joi.string().required(),
  email: Joi.string().allow(''),
  phoneNumber: Joi.string().allow(''),
  birthday: Joi.date().allow(''),
  address: Joi.string().allow(''),
  wardId: Joi.number().allow(null),
  personGroupTypeId: Joi.number().required(),
  isActive: Joi.boolean(),
});

export default updateCustomerSchema;
