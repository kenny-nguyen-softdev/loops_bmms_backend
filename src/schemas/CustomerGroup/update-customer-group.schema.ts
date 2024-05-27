import * as Joi from 'joi';

const updateCustomerGroupSchema = Joi.object({
  name: Joi.string().required(),
});
export default updateCustomerGroupSchema;
