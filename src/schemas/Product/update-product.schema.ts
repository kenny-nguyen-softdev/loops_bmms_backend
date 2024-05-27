import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateProductInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *           description: The name of the product
 *         categoryId:
 *           type: integer
 *           description: The ID of the category
 *         brandId:
 *           type: integer
 *           description: The ID of the brand
 *         sku:
 *           type: string
 *           description: The SKU of the product
 *         barcode:
 *           type: string
 *           description: The barcode of the product
 *         description:
 *           type: string
 *           description: The description of the product
 *         costPrice:
 *           type: number
 *           description: The cost price of the product
 *         salePrice:
 *           type: number
 *           description: The sale price of the product
 *         wholesalePrice:
 *           type: number
 *           description: The wholesale price of the product
 *         inventoryQuantity:
 *           type: integer
 *           description: The inventory quantity of the product
 *         standardUnit:
 *           type: string
 *           description: The standard unit of the product
 *         weight:
 *           type: number
 *           description: The weight of the product
 *         weightUnitId:
 *           type: integer
 *           description: The ID of the weight unit
 *         width:
 *           type: number
 *           description: The width of the product
 *         length:
 *           type: number
 *           description: The length of the product
 *         sizeUnitId:
 *           type: integer
 *           description: The ID of the size unit
 *         isActive:
 *           type: boolean
 *         isConsistOfSalePrice:
 *           type: boolean
 *           nullable: true
 *         inputTaxId:
 *           type: number
 *           nullable: true
 *         outputTaxId:
 *           type: number
 *           nullable: true
 *     UpdateProductResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The ID of the product
 *         categoryId:
 *           type: integer
 *           description: The ID of the category
 *         brandId:
 *           type: integer
 *           description: The ID of the brand
 *         sku:
 *           type: string
 *           description: The SKU of the product
 *         barcode:
 *           type: string
 *           description: The barcode of the product
 *         name:
 *           type: string
 *           description: The name of the product
 *         description:
 *           type: string
 *           description: The description of the product
 *         costPrice:
 *           type: number
 *           description: The cost price of the product
 *         salePrice:
 *           type: number
 *           description: The sale price of the product
 *         wholesalePrice:
 *           type: number
 *           description: The wholesale price of the product
 *         inventoryQuantity:
 *           type: integer
 *           description: The inventory quantity of the product
 *         standardUnit:
 *           type: string
 *           description: The standard unit of the product
 *         isInventory:
 *           type: boolean
 *           description: Indicates if the product is an inventory item
 *         weight:
 *           type: number
 *           description: The weight of the product
 *         weightUnitId:
 *           type: integer
 *           description: The ID of the weight unit
 *         width:
 *           type: number
 *           description: The width of the product
 *         length:
 *           type: number
 *           description: The length of the product
 *         sizeUnitId:
 *           type: integer
 *           description: The ID of the size unit
 *         isActive:
 *           type: boolean
 *         isConsistOfSalePrice:
 *           type: boolean
 *           nullable: true
 *         inputTaxId:
 *           type: number
 *           nullable: true
 *         outputTaxId:
 *           type: number
 *           nullable: true
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The creation timestamp of the product
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The last update timestamp of the product
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The deletion timestamp of the product, if deleted
 *     ReactiveProductResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *           description: The ID of the product
 *         categoryId:
 *           type: integer
 *           description: The ID of the category
 *         brandId:
 *           type: integer
 *           description: The ID of the brand
 *         sku:
 *           type: string
 *           description: The SKU of the product
 *         barcode:
 *           type: string
 *           description: The barcode of the product
 *         name:
 *           type: string
 *           description: The name of the product
 *         description:
 *           type: string
 *           description: The description of the product
 *         costPrice:
 *           type: number
 *           description: The cost price of the product
 *         salePrice:
 *           type: number
 *           description: The sale price of the product
 *         wholesalePrice:
 *           type: number
 *           description: The wholesale price of the product
 *         inventoryQuantity:
 *           type: integer
 *           description: The inventory quantity of the product
 *         standardUnit:
 *           type: string
 *           description: The standard unit of the product
 *         isInventory:
 *           type: boolean
 *           description: Indicates if the product is an inventory item
 *         weight:
 *           type: number
 *           description: The weight of the product
 *         weightUnitId:
 *           type: integer
 *           description: The ID of the weight unit
 *         width:
 *           type: number
 *           description: The width of the product
 *         length:
 *           type: number
 *           description: The length of the product
 *         sizeUnitId:
 *           type: integer
 *           description: The ID of the size unit
 *         isActive:
 *           type: boolean
 *         isConsistOfSalePrice:
 *           type: boolean
 *           nullable: true
 *         inputTaxId:
 *           type: number
 *           nullable: true
 *         outputTaxId:
 *           type: number
 *           nullable: true
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: The creation timestamp of the product
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: The last update timestamp of the product
 *         deletedAt:
 *           type: string
 *           format: date-time
 *           nullable: true
 *           description: The deletion timestamp of the product, if deleted
 */
const updateProductSchema = Joi.object({
  name: Joi.string().allow(''),
  categoryId: Joi.number().allow(null),
  brandId: Joi.number().allow(null),
  sku: Joi.string().allow(''),
  barcode: Joi.string().allow(''),
  description: Joi.string().allow(''),
  costPrice: Joi.number().allow(null),
  salePrice: Joi.number().allow(null),
  wholesalePrice: Joi.number().allow(null),
  inventoryQuantity: Joi.number().allow(null),
  standardUnit: Joi.string().allow(''),
  weight: Joi.number().allow(null),
  weightUnitId: Joi.number().allow(null),
  width: Joi.number().allow(null),
  length: Joi.number().allow(null),
  sizeUnitId: Joi.number().allow(null),
  isActive: Joi.boolean(),
  isConsistOfSalePrice: Joi.boolean(),
  inputTaxId: Joi.number().allow(null),
  outputTaxId: Joi.number().allow(null),
  productUnits: Joi.array().items(
    Joi.object({
      id: Joi.number().allow(null),
      productId: Joi.number().allow(null),
      name: Joi.string().allow(''),
      quantity: Joi.number(),
      salePrice: Joi.number(),
      isDefaultPrice: Joi.boolean().allow(null),
      isActive: Joi.boolean().allow(null),
    }),
  ),
});
export default updateProductSchema;
