import * as Joi from 'joi';
const createSpecificationSchema = Joi.object({
  productId: Joi.number().required(),
  orderId: Joi.number().required(),
  specificationTypeId: Joi.number().required(),
  sizeUnitId: Joi.number().required(),
  value: Joi.number().allow(null),
  groupId: Joi.number().required(),
});
export default createSpecificationSchema;
