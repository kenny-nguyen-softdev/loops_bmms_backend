import Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     CreateComboInput:
 *       type: object
 *       properties:
 *         categoryId:
 *           type: integer
 *           description: The ID of the category to which the combo belongs.
 *         brandId:
 *           type: integer
 *           description: The ID of the brand to which the combo belongs.
 *         sku:
 *           type: string
 *           description: The SKU (Stock Keeping Unit) of the combo.
 *         barcode:
 *           type: string
 *           description: The barcode of the combo.
 *         name:
 *           type: string
 *           description: The name of the combo.
 *         description:
 *           type: string
 *           description: The description of the combo.
 *         costPrice:
 *           type: number
 *           description: The cost price of the combo.
 *         salePrice:
 *           type: number
 *           description: The sale price of the combo.
 *         wholesalePrice:
 *           type: number
 *           description: The wholesale price of the combo.
 *         standardUnit:
 *           type: string
 *           description: The standard unit of the combo (e.g., piece, kg, etc.).
 *         weight:
 *           type: number
 *           description: The weight of the combo.
 *         weightUnitId:
 *           type: integer
 *           description: The ID of the weight unit for the combo.
 *         isActive:
 *           type: boolean
 *           description: The status of the combo (active/inactive).
 *         isConsistOfSalePrice:
 *           type: boolean
 *           description: A flag indicating if the combo consists of the sale price.
 *         inputTaxId:
 *           type: integer
 *           description: The ID of the input tax for the combo.
 *         outputTaxId:
 *           type: integer
 *           description: The ID of the output tax for the combo.
 *         productItems:
 *           type: array
 *           items:
 *             type: object
 *             properties:
 *               id:
 *                 type: integer
 *                 description: The ID of the product item.
 *               quantity:
 *                 type: integer
 *                 description: The quantity of the product item in the combo.
 *         serviceItems:
 *           type: array
 *           items:
 *             type: object
 *             properties:
 *               id:
 *                 type: integer
 *                 description: The ID of the service item.
 *               quantity:
 *                 type: integer
 *                 description: The quantity of the service item in the combo.
 *         presignedUrls:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/PresignedUrls'
 *     Combo:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The unique identifier for the combo.
 *         categoryId:
 *           type: integer
 *           description: The ID of the category to which the combo belongs.
 *         brandId:
 *           type: integer
 *           description: The ID of the brand to which the combo belongs.
 *         sku:
 *           type: string
 *           description: The SKU (Stock Keeping Unit) of the combo.
 *         barcode:
 *           type: string
 *           description: The barcode of the combo.
 *         name:
 *           type: string
 *           description: The name of the combo.
 *         description:
 *           type: string
 *           description: The description of the combo.
 *         costPrice:
 *           type: string
 *           description: The cost price of the combo.
 *         salePrice:
 *           type: string
 *           description: The sale price of the combo.
 *         wholesalePrice:
 *           type: string
 *           description: The wholesale price of the combo.
 *         standardUnit:
 *           type: string
 *           description: The standard unit of the combo (e.g., piece, kg, etc.).
 *         weight:
 *           type: string
 *           description: The weight of the combo.
 *         weightUnitId:
 *           type: integer
 *           description: The ID of the weight unit for the combo.
 *         isActive:
 *           type: boolean
 *           description: The status of the combo (active/inactive).
 *         isConsistOfSalePrice:
 *           type: boolean
 *           description: A flag indicating if the combo consists of the sale price.
 *         inputTaxId:
 *           type: integer
 *           description: The ID of the input tax for the combo.
 *         outputTaxId:
 *           type: integer
 *           description: The ID of the output tax for the combo.
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the combo was created.
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The date and time when the combo was last updated.
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The date and time when the combo was deleted (if applicable).
 */
const createComboSchema = Joi.object({
  name: Joi.string().allow(''),
  categoryId: Joi.number().allow(null),
  brandId: Joi.number().allow(null),
  sku: Joi.string().allow(''),
  barcode: Joi.string().allow(''),
  description: Joi.string().allow(''),
  costPrice: Joi.number().allow(null),
  salePrice: Joi.number().allow(null),
  wholesalePrice: Joi.number().allow(null),
  standardUnit: Joi.string().allow(''),
  weight: Joi.number().allow(null),
  weightUnitId: Joi.number().allow(null),
  isActive: Joi.boolean(),
  isConsistOfSalePrice: Joi.boolean(),
  inputTaxId: Joi.number().allow(null),
  outputTaxId: Joi.number().allow(null),
});
export default createComboSchema;
