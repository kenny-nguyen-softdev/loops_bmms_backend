import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let unitIdTest: number;

describe('POST /api/units', () => {
  const newUnit = {
    unitTypeId: 2,
    name: 'km',
  };
  it('Create new unit', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/units')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newUnit);
    expect(response.statusCode).toBe(201);
    expect(response.body.data !== null).toBe(true);
    unitIdTest = response.body.id;
  });
  it('should return unauthorized without a valid token', async () => {
    const newUnitFault = {
      unitTypeId: 2,
      name: 'km',
    };
    const response = await request(process.env.BASE_PATH).post('/api/units').send(newUnitFault);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/units', () => {
  it('should return a list of units', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/units')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.data !== null).toBe(true);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/units');
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/units/:id', () => {
  it('should return one existing unit', async () => {
    const unitId = unitIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/units/${unitId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(unitId);
  });
  it('Should return an error when unit not found', async () => {
    const unitId = unitIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/units/${unitId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const unitId = unitIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/units/${unitId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/units/:id', () => {
  it('Update one existing unit', async () => {
    const unitId = unitIdTest;
    const updatedUnit = {
      unitTypeId: 2,
      name: 'supper km',
    };
    const response = await request(process.env.BASE_PATH)
      .put(`/api/units/${unitId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedUnit);
    expect(response.statusCode).toBe(200);
    expect(response.body.data !== null).toBe(true);
    expect(response.body.name).toEqual(updatedUnit.name);
  });

  it('should return an error when unit not found', async () => {
    const unitId = unitIdTest + 15;
    const updatedUnit = {
      unitTypeId: 2,
      name: 'supper km',
    };
    const response = await request(process.env.BASE_PATH)
      .put(`/api/units/${unitId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedUnit);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const unitId = unitIdTest;
    const updatedUnit = {
      unitTypeId: 2,
      name: 'supper km',
    };
    const response = await request(process.env.BASE_PATH).put(`/api/units/${unitId}`).send(updatedUnit);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/units/:id', () => {
  it('Delete one existing unit', async () => {
    const unitId = unitIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/units/${unitId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when unit not found', async () => {
    const unitId = unitIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/units/${unitId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const unitId = unitIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/units/${unitId}`);
    expect(response.statusCode).toBe(401);
  });
});
