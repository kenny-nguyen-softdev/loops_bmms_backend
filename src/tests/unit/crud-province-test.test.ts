import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let provinceIdTest: number;

describe('Test for POST route', () => {
  const newProvince = {
    name: 'test',
    code: 'testing',
  };
  it('create province ', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/provinces')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newProvince);
    expect(response.statusCode).toBe(201);
    provinceIdTest = response.body.id;
  });
  it('should return an error for invalid input', async () => {
    const invalidProvince = {
      categoryId: 'categoryId', //get error invalid type of categoryId
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/provinces')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(invalidProvince);
    expect(response.statusCode).toBe(400);
  });
});
describe('GET api/provinces', () => {
  it('should return a list of provinces', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/provinces')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/provinces');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/provinces/:id', () => {
  it('should return an existing of provinces', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/provinces/${provinceIdTest}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(provinceIdTest);
  });
  it('should return an existing of provinces include PersonGroupType', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/provinces/${provinceIdTest}`)
      .query({ include: 'PersonGroupType' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(provinceIdTest);
    expect(response.body.PersonGroupType !== null).toBe(true);
  });
  it('should return error not found province', async () => {
    const provinceId = provinceIdTest + 150;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/provinces/${provinceId}`)
      .query({ include: 'provinceGroup' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get(`/api/provinces/${provinceIdTest}`);
    expect(response.statusCode).toBe(401);
  });
});
describe('PUT /api/provinces/:id', () => {
  const updatedProvince = {
    name: 'test update',
    code: 'testing',
  };
  it('Update one existing province', async () => {
    const provinceId = provinceIdTest;

    const response = await request(process.env.BASE_PATH)
      .put(`/api/provinces/${provinceId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedProvince);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.name).toEqual(updatedProvince.name);
  });

  it('should return an error when province not found', async () => {
    const provinceId = provinceIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/provinces/${provinceId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedProvince);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const provinceId = provinceIdTest;
    const response = await request(process.env.BASE_PATH).put(`/api/provinces/${provinceId}`).send(updatedProvince);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/provinces/:id', () => {
  it('Delete one existing province', async () => {
    const provinceId = provinceIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/provinces/${provinceId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when province not found', async () => {
    const provinceId = provinceIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/provinces/${provinceId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const provinceId = provinceIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/provinces/${provinceId}`);
    expect(response.statusCode).toBe(401);
  });
});
