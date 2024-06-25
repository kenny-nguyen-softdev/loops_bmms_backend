import Joi from 'joi';
const signUpSchema = Joi.object({
  email: Joi.string().email().required(),
  password: Joi.string().min(6).required().label('Password'),
  password_confirmation: Joi.string().valid(Joi.ref('password')).required().label('Password Confirmation').messages({
    'any.only': '{{#label}} does not match the password',
  }),
  name: Joi.string(),
  username: Joi.string().allow(''),
  privateImage: Joi.string().allow(''),
  personGroupTypeId: Joi.number().required(),
  customerInfo: Joi.object(),
});
export default signUpSchema;
