import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let districtIdTest: number;

describe('Test for POST route', () => {
  const newDistrict = {
    name: 'test',
    prefix: 'testing',
    provinceId: 1,
  };
  it('create district ', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/districts')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newDistrict);
    expect(response.statusCode).toBe(201);
    districtIdTest = response.body.id;
  });
  it('should return an error for invalid input', async () => {
    const invalidDistrict = {
        provinceId: 'provinceId', //get error invalid type of categoryId
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/districts')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(invalidDistrict);
    expect(response.statusCode).toBe(400);
  });
});
describe('GET api/districts', () => {
  it('should return a list of districts', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/districts')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/districts');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/districts/:id', () => {
  it('should return an existing of districts', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/districts/${districtIdTest}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(districtIdTest);
  });
  it('should return an existing of districts include PersonGroupType', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/districts/${districtIdTest}`)
      .query({ include: 'PersonGroupType' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(districtIdTest);
    expect(response.body.PersonGroupType !== null).toBe(true);
  });
  it('should return error not found district', async () => {
    const districtId = districtIdTest + 150;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/districts/${districtId}`)
      .query({ include: 'districtGroup' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get(`/api/districts/${districtIdTest}`);
    expect(response.statusCode).toBe(401);
  });
});
describe('PUT /api/districts/:id', () => {
  const updatedDistrict = {
    name: 'test update',
    prefix: 'testing',
    provinceId: 1,
  };
  it('Update one existing district', async () => {
    const districtId = districtIdTest;

    const response = await request(process.env.BASE_PATH)
      .put(`/api/districts/${districtId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedDistrict);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.name).toEqual(updatedDistrict.name);
  });

  it('should return an error when district not found', async () => {
    const districtId = districtIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/districts/${districtId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedDistrict);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const districtId = districtIdTest;
    const response = await request(process.env.BASE_PATH).put(`/api/districts/${districtId}`).send(updatedDistrict);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/districts/:id', () => {
  it('Delete one existing district', async () => {
    const districtId = districtIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/districts/${districtId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when district not found', async () => {
    const districtId = districtIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/districts/${districtId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const districtId = districtIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/districts/${districtId}`);
    expect(response.statusCode).toBe(401);
  });
});
