import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateSupplierInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *           description: The name of the supplier.
 *         supplierGroupId:
 *           type: integer
 *           description: The ID of the supplier group to which the supplier belongs.
 *         code:
 *           type: string
 *           description: The code of the supplier.
 *         email:
 *           type: string
 *           description: The email address of the supplier.
 *         mobile:
 *           type: string
 *           description: The mobile number of the supplier.
 *         company:
 *           type: string
 *           description: The company name of the supplier.
 *         faxId:
 *           type: string
 *           description: The fax ID of the supplier.
 *         taxId:
 *           type: string
 *           description: The tax ID of the supplier.
 *         website:
 *           type: string
 *           description: The website URL of the supplier.
 *         address:
 *           type: string
 *           description: The address of the supplier.
 *         wardId:
 *           type: integer
 *           description: The ID of the ward where the supplier is located.
 *         description:
 *           type: string
 *           description: A description of the supplier.
 *         personGroupTypeId:
 *           type: integer
 *           description: The ID of the person group type associated with the supplier.
 *       required:
 *         - name
 *         - supplierGroupId
 *         - personGroupTypeId
 */

const updateSupplierSchema = Joi.object({
  name: Joi.string().required(),
  supplierGroupId: Joi.number().allow(null),
  code: Joi.string().allow(''),
  email: Joi.string().allow(''),
  mobile: Joi.string().allow(''),
  company: Joi.string().allow(''),
  faxId: Joi.string().allow(''),
  taxId: Joi.string().allow(''),
  website: Joi.string().allow(''),
  address: Joi.string().allow(''),
  wardId: Joi.number().allow(null),
  description: Joi.string().allow(''),
  personGroupTypeId: Joi.number().required(),
});
export default updateSupplierSchema;
