import * as Joi from 'joi';

/**
 * @openapi
 * components:
 *   schemas:
 *     UpdateServiceRequest:
 *       type: object
 *       properties:
 *         name:
 *           type: string
 *         categoryId:
 *           type: integer
 *         sku:
 *           type: string
 *         description:
 *           type: string
 *         costPrice:
 *           type: number
 *         salePrice:
 *           type: number
 *         wholesalePrice:
 *           type: number
 *         standardUnit:
 *           type: string
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
 *     UpdateServiceResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         sku:
 *           type: string
 *         name:
 *           type: string
 *         description:
 *           type: string
 *         categoryId:
 *           type: integer
 *         costPrice:
 *           type: number
 *         salePrice:
 *           type: number
 *         wholesalePrice:
 *           type: number
 *         standardUnit:
 *           type: string
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
 *           format: date-time
 *     ReactivateServiceResponse:
 *       type: object
 *       properties:
 *         id:
 *           type: integer
 *         sku:
 *           type: string
 *         name:
 *           type: string
 *         description:
 *           type: string
 *         categoryId:
 *           type: integer
 *         costPrice:
 *           type: number
 *         salePrice:
 *           type: number
 *         wholesalePrice:
 *           type: number
 *         standardUnit:
 *           type: string
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
 *           format: date-time
 */
const updateServiceSchema = Joi.object({
  sku: Joi.string().allow(''),
  name: Joi.string().allow(''),
  description: Joi.string().allow(''),
  categoryId: Joi.number().allow(null),
  costPrice: Joi.number().allow(null),
  salePrice: Joi.number().allow(null),
  wholesalePrice: Joi.number().allow(null),
  standardUnit: Joi.string().allow(''),
  isActive: Joi.boolean(),
  isConsistOfSalePrice: Joi.boolean(),
  inputTaxId: Joi.number().allow(null),
  outputTaxId: Joi.number().allow(null),
});
export default updateServiceSchema;
