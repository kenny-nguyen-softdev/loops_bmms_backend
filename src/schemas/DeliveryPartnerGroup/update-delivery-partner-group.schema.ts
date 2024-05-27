import * as Joi from 'joi';

const updateDeliveryPartnerGroupSchema = Joi.object({
  name: Joi.string().required(),
});
export default updateDeliveryPartnerGroupSchema;
