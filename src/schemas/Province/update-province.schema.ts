import * as Joi from 'joi';

const updateProvinceSchema = Joi.object({
  name: Joi.string().required(),
  code: Joi.string().required(),
});
export default updateProvinceSchema;
