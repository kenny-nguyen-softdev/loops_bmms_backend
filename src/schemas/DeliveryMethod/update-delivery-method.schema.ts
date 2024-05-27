import * as Joi from 'joi';

const updateDeliveryMethodSchema = Joi.object({
  name: Joi.string().required(),
  key: Joi.string().required(),
});
export default updateDeliveryMethodSchema;
