import * as Joi from 'joi';
const createDeliveryMethodSchema = Joi.object({
  name: Joi.string().required(),
  key: Joi.string().required(),
});
export default createDeliveryMethodSchema;
