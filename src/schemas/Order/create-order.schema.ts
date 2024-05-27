import * as Joi from 'joi';
const createOrderSchema = Joi.object({
  customerId: Joi.number().required(),
  orderStatusId: Joi.number().required(),
  approvedStatusId: Joi.number().required(),
  shippingStatusId: Joi.number().required(),
  paymentStatusId: Joi.number().required(),
  exportedInventoryStatusId: Joi.number().required(),
  deliveryMethodId: Joi.number().required(),
  code: Joi.string().allow(''),
  note: Joi.string().allow(''),
  deliveryDate: Joi.date().allow(null),
  quantityTotal: Joi.number().allow(null),
  shippingFee: Joi.number().allow(null),
  totalPrice: Joi.number().allow(null),
  discount: Joi.number().allow(null),
  totalTaxPrice: Joi.number().allow(null),
  debtAmount: Joi.number().allow(null),
  deliveryPartnerId: Joi.number().allow(null),
  paymentMethodId: Joi.number().allow(null),
  staffId: Joi.number().required(),
  customerPays: Joi.number().required(),
  customerPaysDate: Joi.date().allow(null),
  productItems: Joi.array().required(),
  comboItems: Joi.array(),
  serviceItems: Joi.array(),
  specificationItems: Joi.array(),
});
export default createOrderSchema;