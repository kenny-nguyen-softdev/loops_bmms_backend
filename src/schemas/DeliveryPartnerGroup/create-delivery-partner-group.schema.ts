import * as Joi from 'joi';
const createDeliveryPartnerGroupSchema = Joi.object({
  name: Joi.string().required(),
});
export default createDeliveryPartnerGroupSchema;
