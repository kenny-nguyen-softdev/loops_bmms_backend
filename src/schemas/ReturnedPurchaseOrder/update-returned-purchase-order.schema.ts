import * as Joi from 'joi';

const updateReturnedPurchaseOrderSchema = Joi.object({
  voucherTypeId: Joi.number().required(),
  note: Joi.string().allow(''),
  returnedQuantityTotal: Joi.number().allow(null),
  discount: Joi.number().allow(null),
  totalTaxPrice: Joi.number().required(),
  refundPriceTotal: Joi.number().required(),
  receivedRefundAmount: Joi.number().required(),
  refundDate: Joi.date().allow(null),
  purchaseOrderId: Joi.number().required(),
  paymentMethodId: Joi.number().required(),
  returnedStatusId: Joi.number().required(),
  refundStatusId: Joi.number().required(),
  productItems: Joi.array().required(),
});
export default updateReturnedPurchaseOrderSchema;
