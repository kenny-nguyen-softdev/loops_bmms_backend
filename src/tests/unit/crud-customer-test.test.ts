import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let customerIdTest: number;

const newCustomer = {
  name: 'Long Tran',
  email: 'LongTran09@example.com',
  phoneNumber: '03225568598',
  birthday: '1990-01-01',
  address: '123 Main Street',
  wardId: 1,
  personGroupTypeId: 2,
};
describe('POST /api/customers', () => {
  it('Create new customer', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/customers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newCustomer);
    expect(response.statusCode).toBe(201);
    expect(response.body !== null).toBe(true);
    customerIdTest = response.body.id;
  });
  it('It should return error phone number existed', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/customers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newCustomer);
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('This phone number existed');
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).post('/api/customers').send(newCustomer);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/customers', () => {
  it('should return a list of customers', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/customers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return a list of customers limit 2', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/customers')
      .query({ limit: 2 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(2);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/customers');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/customers/:id', () => {
  it('should return one existing customer', async () => {
    const customerId = customerIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/customers/${customerId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(customerId);
  });
  it('should return one existing customer include Ward', async () => {
    const customerId = customerIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/customers/${customerId}`)
      .query({ include: 'Ward' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(customerId);
    expect(response.body.Ward !== null).toBe(true);
  });
  it('Should return an error when customer not found', async () => {
    const customerId = customerIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/customers/${customerId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const customerId = customerIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/customers/${customerId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/customers/:id', () => {
  const updatedCustomer = {
    name: 'LongTran update',
    email: newCustomer.email,
    phoneNumber: newCustomer.phoneNumber,
    birthday: '1990-01-01',
    address: '123 Main Street',
    wardId: 1,
    personGroupTypeId: 2,
  };
  it('Update one existing customer', async () => {
    const customerId = customerIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/customers/${customerId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedCustomer);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.name).toEqual(updatedCustomer.name);
  });

  it('should return an error when customer not found', async () => {
    const customerId = customerIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/customers/${customerId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedCustomer);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const customerId = customerIdTest;
    const response = await request(process.env.BASE_PATH).put(`/api/customers/${customerId}`).send(updatedCustomer);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/customers/reactivate/:id', () => {
  it('should reactive customer', async () => {
    const customerId = customerIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/customers/reactivate/${customerId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when customer not found', async () => {
    const customerId = customerIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/customers/reactivate/${customerId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
    expect(response.body.message).toBe('Not Found');
  });
  it('should return unauthorized without a valid token', async () => {
    const customerId = customerIdTest + 15;
    const response = await request(process.env.BASE_PATH).put(`/api/customers/reactivate/${customerId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/customers/:id', () => {
  it('Delete one existing customer', async () => {
    const customerId = customerIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/customers/${customerId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when customer not found', async () => {
    const customerId = customerIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/customers/${customerId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const customerId = customerIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/customers/${customerId}`);
    expect(response.statusCode).toBe(401);
  });
});
