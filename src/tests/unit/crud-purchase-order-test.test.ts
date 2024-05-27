import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let purchaseOrderIdTest: number;

//make sure all this id is exists
const voucherTypeId = 3;
const supplierId = 15;
const paymentStatusId = 2;
const productId = 15;
const importStatusId = 5; //1: Unpaid; 2: Trading; 3: Paid; 4: Unimported; 5: imported

describe('Test for POST route', () => {
  const newPurchaseOrder = {
    voucherTypeId: voucherTypeId,
    supplierId: supplierId,
    staffId: null,
    deliveredDate: '07/11/2023 11:55:33',
    importDate: '07/11/2023 11:55:33',
    note: '',
    paymentStatusId: paymentStatusId,
    importStatusId: importStatusId,
    quantityTotal: 22,
    totalPrice: 20000000,
    discount: 500000,
    totalTaxPrice: 6000000,
    debtAmount: 20000000,
    productItems: [
      {
        id: productId,
        quantity: 22,
        price: 300000,
        discount: 10000,
        totalPrice: 6380000,
      },
    ],
  };
  it('create purchaseOrder ', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/purchase-orders')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newPurchaseOrder);
    expect(response.statusCode).toBe(201);
    purchaseOrderIdTest = response.body.purchaseOrder.id;
  });
  it('should return an error for invalid input', async () => {
    const invalidPurchaseOrder = {
      voucherTypeId: 'voucherTypeId',
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/purchase-orders')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(invalidPurchaseOrder);
    expect(response.statusCode).toBe(400);
  });
});
describe('GET purchase-orders', () => {
  it('should return a list of purchaseOrders', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/purchase-orders')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.purchaseOrder !== null).toBe(true);
  });
  it('should return a list of purchaseOrders  limit 3', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/purchase-orders')
      .query({ orderBy: 'id', limit: 3 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(3);
  });
  it('should return a list of purchaseOrders include VoucherType limit 3', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/purchase-orders')
      .query({ orderBy: 'id', include: 'VoucherType', limit: 3 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(3);
    response.body.forEach((item: { VoucherType: null; }) => {
      expect(item.VoucherType !== null).toBe(true);
    });
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/purchase-orders');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/purchase-orders/:id', () => {
  it('should return an existing of purchaseOrders', async () => {
    console.log('purchaseOrderIdTest');
    console.log(purchaseOrderIdTest);
    const response = await request(process.env.BASE_PATH)
      .get(`/api/purchase-orders/${purchaseOrderIdTest}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(purchaseOrderIdTest);
  });
  it('should return an existing of purchaseOrders include VoucherType', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/purchase-orders/${purchaseOrderIdTest}`)
      .query({ include: 'VoucherType' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(purchaseOrderIdTest);
    expect(response.body.VoucherType !== null).toBe(true);
  });
  it('should return an existing of purchaseOrders include Supplier', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/purchase-orders/${purchaseOrderIdTest}`)
      .query({ include: 'Supplier' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(purchaseOrderIdTest);
    expect(response.body.Supplier !== null).toBe(true);
  });
  it('should return error not found purchaseOrder', async () => {
    const purchaseOrderId = purchaseOrderIdTest + 150;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/purchase-orders/${purchaseOrderId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get(`/api/purchase-orders/${purchaseOrderIdTest}`);
    expect(response.statusCode).toBe(401);
  });
});
describe('PUT /api/purchase-orders/:id', () => {
  const updatedPurchaseOrder = {
    voucherTypeId: 3,
    supplierId: 15,
    staffId: null,
    deliveredDate: '07/11/2023 11:55:33',
    importDate: '07/11/2023 11:55:33',
    note: 'Don nay da duoc update',
    paymentStatusId: 2,
    importStatusId: 4,
  };
  it('Update one existing purchaseOrder', async () => {
    const purchaseOrderId = purchaseOrderIdTest;

    const response = await request(process.env.BASE_PATH)
      .put(`/api/purchase-orders/${purchaseOrderId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedPurchaseOrder);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.note).toEqual(updatedPurchaseOrder.note);
  });

  it('should return an error when purchaseOrder not found', async () => {
    const purchaseOrderId = purchaseOrderIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/purchase-orders/${purchaseOrderId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedPurchaseOrder);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const purchaseOrderId = purchaseOrderIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/purchase-orders/${purchaseOrderId}`)
      .send(updatedPurchaseOrder);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/purchase-orders/:id', () => {
  it('Delete one existing purchaseOrder', async () => {
    const purchaseOrderId = purchaseOrderIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/purchase-orders/${purchaseOrderId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when purchaseOrder not found', async () => {
    const purchaseOrderId = purchaseOrderIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/purchase-orders/${purchaseOrderId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const purchaseOrderId = purchaseOrderIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/purchase-orders/${purchaseOrderId}`);
    expect(response.statusCode).toBe(401);
  });
});
