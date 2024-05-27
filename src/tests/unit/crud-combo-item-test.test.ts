import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let comboItemIdTest: number;

describe('POST /api/combo-items', () => {
  const newComboItem = {
    productId: 3,
    quantity: 25,
  };
  it('Create new combo-item', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/combo-items')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newComboItem);
    expect(response.statusCode).toBe(201);
    expect(response.body.data !== null).toBe(true);
    comboItemIdTest = response.body.id;
  });
  it('should return unauthorized without a valid token', async () => {
    const newComboItemFault = {
        productId: 3,
        quantity: 25,
      };
    const response = await request(process.env.BASE_PATH).post('/api/combo-items').send(newComboItemFault);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/combo-items', () => {
  it('should return a list of combo-items', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/combo-items')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return a list of combo-items limit = 3', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/combo-items')
      .query({ orderBy: 'id', limit: 3 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(3);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/combo-items');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/combo-items/:id', () => {
  it('should return one existing combo-item', async () => {
    const comboItemId = comboItemIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/combo-items/${comboItemId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(comboItemId);
  });
  it('Should return an error when combo-item not found', async () => {
    const comboItemId = comboItemIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/combo-items/${comboItemId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const comboItemId = comboItemIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/combo-items/${comboItemId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/combo-items/:id', () => {
  it('Update one existing combo-items', async () => {
    const comboItemId = comboItemIdTest;
    const updatedComboItem = {
        productId: 3,
        quantity: 25,
      };
    const response = await request(process.env.BASE_PATH)
      .put(`/api/combo-items/${comboItemId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedComboItem);
    expect(response.statusCode).toBe(200);
    expect(response.body.data !== null).toBe(true);
    expect(response.body.productId).toEqual(updatedComboItem.productId);
  });

  it('should return an error when combo-items not found', async () => {
    const comboItemId = comboItemIdTest + 15;
    const updatedComboItem = {
        productId: 4,
        quantity: 25,
      };
    const response = await request(process.env.BASE_PATH)
      .put(`/api/combo-items/${comboItemId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedComboItem);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const comboItemId = comboItemIdTest;
    const updatedComboItem = {
        productId: 4,
        quantity: 25,
      };
    const response = await request(process.env.BASE_PATH).put(`/api/combo-items/${comboItemId}`).send(updatedComboItem);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/combo-items/:id', () => {
  it('Delete one existing combo-items', async () => {
    const comboItemId = comboItemIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/combo-items/${comboItemId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when combo-items not found', async () => {
    const comboItemId = comboItemIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/combo-items/${comboItemId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const comboItemId = comboItemIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/combo-items/${comboItemId}`);
    expect(response.statusCode).toBe(401);
  });
});
