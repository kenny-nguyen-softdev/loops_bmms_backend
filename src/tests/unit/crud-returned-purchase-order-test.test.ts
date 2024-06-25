import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let returnPurchasseOrderIdTest: number;
//make sure these id valid
const voucherTypeId = 4;
const totalTaxPrice = 560000;
const refundPriceTotal = 25500000;
const receivedRefundAmount = 15000000;
const purchaseOrderId = 4;
const paymentMethodId = 1;
const returnedStatusId = 7;
const refundStatusId = 5;
describe('POST /api/returned-purchase-orders', () => {
  const newReturnPurchasseOrder = {
    voucherTypeId: voucherTypeId,
    note: '',
    returnedQuantityTotal: 20,
    discount: 250000,
    totalTaxPrice: totalTaxPrice,
    refundPriceTotal: refundPriceTotal,
    receivedRefundAmount: receivedRefundAmount,
    refundDate: '2023/09/23 15:35:20',
    purchaseOrderId: purchaseOrderId,
    paymentMethodId: paymentMethodId,
    returnedStatusId: returnedStatusId,
    refundStatusId: refundStatusId,
    productItems: [
      {
        id: 3,
        quantity: 20,
        price: 300000,
        discount: 10000,
        totalPrice: 6380000,
      },
    ],
  };
  it('Create new returned Purchase Orders', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/returned-purchase-orders')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newReturnPurchasseOrder);
    expect(response.statusCode).toBe(201);
    expect(response.body.returnedPurchaseOrder !== null).toBe(true);
    expect(response.body.productItems.length > 0).toBe(true);
    returnPurchasseOrderIdTest = response.body.returnedPurchaseOrder.id;
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).post('/api/returned-purchase-orders').send(newReturnPurchasseOrder);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/returned-purchase-orders/:id', () => {
  it('should return one existing returned Purchase Order', async () => {
    const returnedPurchaseOrderId = returnPurchasseOrderIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/returned-purchase-orders/${returnedPurchaseOrderId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(returnedPurchaseOrderId);
  });
  it('Should return an error when returnedPurchaseOrder not found', async () => {
    const returnedPurchaseOrderId = returnPurchasseOrderIdTest + 1500;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/returned-purchase-orders/${returnedPurchaseOrderId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const returnedPurchaseOrderId = returnPurchasseOrderIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/returned-purchase-orders/${returnedPurchaseOrderId}`);
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/returned-purchase-orders', () => {
  it('should return a list of returnedPurchaseOrders', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/returned-purchase-orders')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return a list of returnedPurchaseOrders limit 3', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/returned-purchase-orders')
      .query({ limit: 3 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(3);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/returned-purchase-orders');
    expect(response.statusCode).toBe(401);
  });
});
