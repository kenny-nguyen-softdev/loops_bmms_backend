import * as Joi from 'joi';
const createReturnedOrderSchema = Joi.object({
  orderId: Joi.number().required(),
  returnedOrderStatusId: Joi.number().required(),
  customerId: Joi.number().required(),
  code: Joi.string().allow(''),
  note: Joi.string().allow(''),
  returnedQuantityTotal: Joi.number().allow(null),
  refundPriceTotal: Joi.number().allow(null),
  receivedRefundAmount: Joi.number().allow(null),
  refundDate: Joi.date().allow(null),
  paymentMethodId: Joi.number().allow(null),
  refundStatusId: Joi.number().allow(null),
  productItems: Joi.array().required(),
  // serviceItems: Joi.array().required(),
  // comboItems: Joi.array().required(),
});
export default createReturnedOrderSchema;
