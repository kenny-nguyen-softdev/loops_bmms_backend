import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *  schemas:
 *    UpdateUserInput:
 *      type: object
 *      required:
 *        - email
 *        - name
 *        - username
 *        - personGroupTypeKey
 *      properties:
 *        email:
 *          required: true
 *          type: string
 *          unique: true
 *          default: test@example.com
 *        name:
 *          required: true
 *          type: string
 *          default: Trung Kien
 *        username:
 *          type: string
 *          default: example
 *        personGroupTypeKey:
 *          type: string
 *          default: delivery
 *    UpdateUserResponse:
 *      type: object
 *      properties:
 *        id:
 *          type: integer
 *        email:
 *          type: string
 *        name:
 *          type: string
 *        username:
 *          type: string
 *        password:
 *          type: string
 *        privateImage:
 *          type: string
 *        isActive:
 *          type: boolean
 *        personGroupTypeId:
 *          type: number
 *        createdAt:
 *          type: string
 *          format: date-time
 *        updatedAt:
 *          type: string
 *          format: date-time
 *        deletedAt:
 *          type: string
 *          format: date-time
 */
const updateUserSchema = Joi.object({
  name: Joi.string().required(),
  email: Joi.string().email().required(),
  username: Joi.string(),
  privateImage: Joi.string(),
  isActive: Joi.boolean(),
  personGroupTypeKey: Joi.string().required(),
});
export default updateUserSchema;
