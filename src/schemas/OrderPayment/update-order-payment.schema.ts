import * as Joi from 'joi';
const updateOrderPaymentSchema = Joi.object({
  orderId: Joi.number().required(),
  amount: Joi.number().required(),
  paidDate: Joi.date().required(),
  paymentMethodId: Joi.number(),
});
export default updateOrderPaymentSchema;
