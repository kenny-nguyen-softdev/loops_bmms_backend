import * as Joi from 'joi';
const updateDeliveryPartnerSchema = Joi.object({
  name: Joi.string().required(),
  deliveryPartnerGroupId: Joi.number().allow(null),
  code: Joi.string().allow(''),
  email: Joi.string().allow(''),
  mobile: Joi.string().allow(''),
  company: Joi.string().allow(''),
  address: Joi.string().allow(''),
  description: Joi.string().allow(''),
  shippingFee: Joi.number().allow(''),
  wardId: Joi.number().allow(null),
  personGroupTypeId: Joi.number().required(),
});
export default updateDeliveryPartnerSchema;
