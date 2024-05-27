import * as Joi from 'joi';
const createProductUnitSchema = Joi.object({
  productId: Joi.number().allow(null),
  name: Joi.string().allow(''),
  quantity: Joi.number().required(),
  salePrice: Joi.number().allow(null),
  isDefaultPrice: Joi.boolean().allow(null),
});
export default createProductUnitSchema;
