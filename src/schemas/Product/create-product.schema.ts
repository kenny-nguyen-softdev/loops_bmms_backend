import * as Joi from 'joi';
/**
 * @openapi
 * components:
 *   schemas:
 *     GetProduct:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         categoryId:
 *           type: integer
 *         brandId:
 *           type: integer
 *         sku:
 *           type: string
 *         barcode:
 *           type: string
 *         name:
 *           type: string
 *         description:
 *           type: string
 *         costPrice:
 *           type: string
 *           format: bigInt
 *         salePrice:
 *           type: string
 *           format: bigInt
 *         wholesalePrice:
 *           type: string
 *           format: bigInt
 *         inventoryQuantity:
 *           type: integer
 *         standardUnit:
 *           type: string
 *         isInventory:
 *           type: boolean
 *         weight:
 *           type: string
 *           format: decimal
 *         weightUnitId:
 *           type: integer
 *         width:
 *           type: string
 *           format: decimal
 *         length:
 *           type: string
 *           format: decimal
 *         sizeUnitId:
 *           type: integer
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
 *         updatedAt:
 *           type: string
 *           format: date-time
 *         deletedAt:
 *           type: string
 *           nullable: true
 *         category:
 *               $ref: '#/components/schemas/GetOneCategoryResponse'
 *         brand:
 *               $ref: '#/components/schemas/GetOneBrandResponse'
 *         weightUnit:
 *               $ref: '#/components/schemas/GetUnitResponse'
 *         sizeUnit:
 *               $ref: '#/components/schemas/GetUnitResponse'
 *         images:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/Image'
 *     CreateProductInput:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *         categoryId:
 *           type: integer
 *         brandId:
 *           type: integer
 *         sku:
 *           type: string
 *         barcode:
 *           type: string
 *         description:
 *           type: string
 *         costPrice:
 *           type: number
 *         salePrice:
 *           type: number
 *         wholesalePrice:
 *           type: number
 *         inventoryQuantity:
 *           type: number
 *         standardUnit:
 *           type: string
 *         weight:
 *           type: number
 *         weightUnitId:
 *           type: integer
 *         width:
 *           type: number
 *         length:
 *           type: number
 *         sizeUnitId:
 *           type: integer
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
 *         presignedUrls:
 *           type: array
 *           items:
 *              $ref: '#/components/schemas/PresignedUrls'
 *     CreateProductResponse:
 *       type: object
 *       properties:
 *         product:
 *           $ref: '#/components/schemas/Product'
 *         images:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/Image'
 *     Product:
 *       type: object
 *       properties:
 *         isInventory:
 *           type: boolean
 *         id:
 *           type: integer
 *         name:
 *           type: string
 *         categoryId:
 *           type: integer
 *         brandId:
 *           type: integer
 *         sku:
 *           type: string
 *         barcode:
 *           type: string
 *         description:
 *           type: string
 *         costPrice:
 *           type: string
 *           format: bigInt
 *         salePrice:
 *           type: string
 *           format: bigInt
 *         wholesalePrice:
 *           type: string
 *           format: bigInt
 *         inventoryQuantity:
 *           type: integer
 *         standardUnit:
 *           type: string
 *         weight:
 *           type: string
 *           format: decimal
 *         weightUnitId:
 *           type: integer
 *         width:
 *           type: string
 *           format: decimal
 *         length:
 *           type: string
 *           format: decimal
 *         sizeUnitId:
 *           type: integer
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
 *         updatedAt:
 *           type: string
 *           format: date-time
 *         createdAt:
 *           type: string
 *           format: date-time
 *         deletedAt:
 *           type: string
 *           nullable: true
 *     Image:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         productId:
 *           type: integer
 *         serviceId:
 *           type: integer
 *         name:
 *           type: string
 *         path:
 *           type: string
 *         createdAt:
 *           type: string
 *           format: date-time
 *         updatedAt:
 *           type: string
 *           format: date-time
 *         deletedAt:
 *           type: string
 *           nullable: true
 *     PreSignUrlResponse:
 *       type: object
 *       properties:
 *         presignedUrls:
 *           type: array
 *           items:
 *              $ref: '#/components/schemas/PresignedUrls'
 *     PresignedUrls:
 *       type: object
 *       properties:
 *         write:
 *           type: string
 *         filename:
 *           type: string
 *     UploadProductImagesV2Response:
 *       type: object
 *       properties:
 *         message:
 *           type: string
 *         uploadedImages:
 *           type: array
 *           items:
 *             $ref: '#/components/schemas/Image'
 */
const createProductSchema = Joi.object({
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
      productId: Joi.number().allow(null),
      name: Joi.string(),
      quantity: Joi.number(),
      salePrice: Joi.number(),
      isDefaultPrice: Joi.boolean().allow(null),
      isActive: Joi.boolean().allow(null),
    }),
  ),
});
export default createProductSchema;
