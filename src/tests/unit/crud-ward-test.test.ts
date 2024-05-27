import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let wardIdTest: number;

describe('Test for POST route', () => {
  const newWard = {
    name: 'test',
    prefix: 'testing',
    districtId: 1,
  };
  it('create ward ', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/wards')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newWard);
    expect(response.statusCode).toBe(201);
    wardIdTest = response.body.id;
  });
  it('should return an error for invalid input', async () => {
    const invalidWard = {
      categoryId: 'categoryId', //get error invalid type of categoryId
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/wards')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(invalidWard);
    expect(response.statusCode).toBe(400);
  });
});
describe('GET api/wards', () => {
  it('should return a list of wards', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/wards')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/wards');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/wards/:id', () => {
  it('should return an existing of wards', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/wards/${wardIdTest}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(wardIdTest);
  });
  it('should return an existing of wards include PersonGroupType', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/wards/${wardIdTest}`)
      .query({ include: 'PersonGroupType' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(wardIdTest);
    expect(response.body.PersonGroupType !== null).toBe(true);
  });
  it('should return error not found ward', async () => {
    const wardId = wardIdTest + 150;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/wards/${wardId}`)
      .query({ include: 'wardGroup' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get(`/api/wards/${wardIdTest}`);
    expect(response.statusCode).toBe(401);
  });
});
describe('PUT /api/wards/:id', () => {
  const updatedWard = {
    name: 'test update' ,
    prefix: 'testing',
    districtId: 1,
  };
  it('Update one existing ward', async () => {
    const wardId = wardIdTest;

    const response = await request(process.env.BASE_PATH)
      .put(`/api/wards/${wardId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedWard);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.name).toEqual(updatedWard.name);
  });

  it('should return an error when ward not found', async () => {
    const wardId = wardIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/wards/${wardId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedWard);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const wardId = wardIdTest;
    const response = await request(process.env.BASE_PATH).put(`/api/wards/${wardId}`).send(updatedWard);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/wards/:id', () => {
  it('Delete one existing ward', async () => {
    const wardId = wardIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/wards/${wardId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when ward not found', async () => {
    const wardId = wardIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/wards/${wardId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const wardId = wardIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/wards/${wardId}`);
    expect(response.statusCode).toBe(401);
  });
});
