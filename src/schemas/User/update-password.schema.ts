import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateUserPasswordInput:
 *       type: object
 *       required:
 *         - password
 *         - newPassword
 *         - passwordConfirmation
 *       properties:
 *         password:
 *           type: string
 *           description: The current password of the user.
 *         newPassword:
 *           type: string
 *           description: The new password for the user.
 *         passwordConfirmation:
 *           type: string
 *           description: Confirmation of the new password.
 *       example:
 *         password: oldpassword123
 *         newPassword: newsecurepassword456
 *         passwordConfirmation: newsecurepassword456
 */

const updatePasswordSchema = Joi.object({
    password: Joi.string(),
    newPassword: Joi.string().min(6).required().label('New Password'),
    passwordConfirmation: Joi.string().valid(Joi.ref('newPassword')).required().label('Password Confirmation').messages({
        'any.only': '{{#label}} does not match the password',
      }),
  });
  export default updatePasswordSchema;