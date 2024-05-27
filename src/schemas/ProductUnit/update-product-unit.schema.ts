import * as Joi from 'joi';
const updateProductUnitSchema = Joi.object({
  productId: Joi.number().allow(null),
  name: Joi.number().required(),
  quantity: Joi.number().required(),
  value: Joi.number().allow(null),
});
export default updateProductUnitSchema;
