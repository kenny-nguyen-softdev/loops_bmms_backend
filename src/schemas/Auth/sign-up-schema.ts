import Joi from 'joi';
const signUpSchema = Joi.object({
  email: Joi.string().email().required(),
  password: Joi.string().min(6).required().label('Password'),
  password_confirmation: Joi.string().valid(Joi.ref('password')).required().label('Password Confirmation').messages({
    'any.only': '{{#label}} does not match the password',
  }),
  name: Joi.string(),
  username: Joi.string(),
  privateImage: Joi.string(),
  personGroupTypeId: Joi.number().required(),
});
export default signUpSchema;
