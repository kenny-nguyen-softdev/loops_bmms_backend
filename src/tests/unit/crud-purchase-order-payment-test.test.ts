import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let purchaseOrderPaymentIdTest: number;
const purchaseOrderId = 2;
const paymentMethodId = 3;

describe('POST /api/purchase-order-payments', () => {
  const newPurchaseOrderPayments = {
    purchaseOrderId: purchaseOrderId,
    amount: 2000000,
    paidDate: '07/11/2023 11:55:33',
    paymentMethodId: paymentMethodId,
  };
  it('Create new purchaseOrderPayment', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/purchase-order-payments')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newPurchaseOrderPayments);
    expect(response.statusCode).toBe(201);
    expect(response.body !== null).toBe(true);
    purchaseOrderPaymentIdTest = response.body.id;
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/purchase-order-payments')
      .send(newPurchaseOrderPayments);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/purchase-order-payments', () => {
  it('should return a list of purchaseOrderPayments', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/purchase-order-payments')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return a list of purchaseOrderPayments limit 2', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/purchase-order-payments')
      .query({ limit: 2 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(2);
  });
  it('should return a list of purchaseOrderPayments include PurchaseOrder', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/purchase-order-payments')
      .query({ include: 'PurchaseOrder', limit: 2 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    response.body.forEach((item: { PurchaseOrder: null }) => {
      expect(item.PurchaseOrder !== null).toBe(true);
    });
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/purchase-order-payments');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/purchase-order-payments/:id', () => {
  it('should return one existing purchaseOrderPayment', async () => {
    const purchaseOrderPaymentId = purchaseOrderPaymentIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/purchase-order-payments/${purchaseOrderPaymentId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(purchaseOrderPaymentId);
  });
  it('should return one existing purchaseOrderPayment include PurchaseOrder', async () => {
    const purchaseOrderPaymentId = purchaseOrderPaymentIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/purchase-order-payments/${purchaseOrderPaymentId}`)
      .query({ include: 'PurchaseOrder' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(purchaseOrderPaymentId);
    expect(response.body.PurchaseOrder !== null).toBe(true);
  });
  it('Should return an error when purchaseOrderPayment not found', async () => {
    const purchaseOrderPaymentId = purchaseOrderPaymentIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/purchase-order-payments/${purchaseOrderPaymentId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const purchaseOrderPaymentId = purchaseOrderPaymentIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/purchase-order-payments/${purchaseOrderPaymentId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/purchase-order-payments/:id', () => {
  const updatedPurchaseOrderPayments = {
    purchaseOrderId: purchaseOrderId,
    amount: 2,
    paidDate: '07/11/2023 11:55:33',
    paymentMethodId: paymentMethodId,
  };
  it('Update one existing purchaseOrderPayment', async () => {
    const purchaseOrderPaymentId = purchaseOrderPaymentIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/purchase-order-payments/${purchaseOrderPaymentId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedPurchaseOrderPayments);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.amount).toEqual(updatedPurchaseOrderPayments.amount);
  });

  it('should return an error when purchaseOrderPayment not found', async () => {
    const purchaseOrderPaymentId = purchaseOrderPaymentIdTest + 150;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/purchase-order-payments/${purchaseOrderPaymentId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedPurchaseOrderPayments);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const purchaseOrderPaymentId = purchaseOrderPaymentIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/purchase-order-payments/${purchaseOrderPaymentId}`)
      .send(updatedPurchaseOrderPayments);
    expect(response.statusCode).toBe(401);
  });
});
