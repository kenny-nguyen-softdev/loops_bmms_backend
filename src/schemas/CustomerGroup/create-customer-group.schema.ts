import * as Joi from 'joi';
const createCustomerGroupSchema = Joi.object({
  name: Joi.string().required(),
});
export default createCustomerGroupSchema;
