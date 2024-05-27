import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let orderSupplierIdTest: number;
//make sure these id valid
const supplierId = 15;
const importStatusId = 5;
describe('POST /api/order-suppliers', () => {
  const newOrderSupplier = {
    supplierId: supplierId,
    staffId: null,
    importDate: '07/11/2023 11:55:33',
    deliveredDate: '07/11/2023 11:55:33',
    note: '',
    quantityTotal: 20,
    totalPrice: 20000,
    discount: 500000,
    totalTaxPrice: 6000000,
    importStatusId: importStatusId,
    productItems: [
      {
        id: 16,
        quantity: 25,
        price: 300000,
        discount: 10000,
        totalPrice: 6380000,
      },
    ],
  };
  it('Create new orderSuppliers', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/order-suppliers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newOrderSupplier);
    expect(response.statusCode).toBe(201);
    expect(response.body.orderSupplier !== null).toBe(true);
    expect(response.body.productItems.length > 0).toBe(true);
    orderSupplierIdTest = response.body.orderSupplier.id;
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).post('/api/order-suppliers').send(newOrderSupplier);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/order-suppliers/:id', () => {
  it('should return one existing orderSupplier', async () => {
    const orderSupplierId = orderSupplierIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/order-suppliers/${orderSupplierId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    console.log(response.body);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(orderSupplierId);
  });
  it('Should return an error when orderSupplier not found', async () => {
    const orderSupplierId = orderSupplierIdTest + 1500;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/order-suppliers/${orderSupplierId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const orderSupplierId = orderSupplierIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/order-suppliers/${orderSupplierId}`);
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/order-suppliers', () => {
  it('should return a list of orderSuppliers', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/order-suppliers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return a list of orderSuppliers limit 2', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/order-suppliers')
      .query({ limit: 2 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(2);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/order-suppliers');
    expect(response.statusCode).toBe(401);
  });
});
