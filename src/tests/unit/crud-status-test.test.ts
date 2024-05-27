import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let statuseIdTest: number;

describe('POST /api/statuses', () => {
  const newStatus = {
    name: 'test',
    key: 'testing',
    statusTypeId: 1,
  };
  it('Create new statuse', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/statuses')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newStatus);
    expect(response.statusCode).toBe(201);
    expect(response.body !== null).toBe(true);
    statuseIdTest = response.body.id;
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).post('/api/statuses').send(newStatus);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/statuses', () => {
  it('should return a list of statuses', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/statuses')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/statuses');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/statuses/:id', () => {
  it('should return one existing statuse', async () => {
    const statuseId = statuseIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/statuses/${statuseId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(statuseId);
  });
  it('Should return an error when statuse not found', async () => {
    const statuseId = statuseIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/statuses/${statuseId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const statuseId = statuseIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/statuses/${statuseId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/statuses/:id', () => {
  const updatedStatus = {
    name: 'test update name',
    key: 'testing',
    statusTypeId: 1,
  };
  it('Update one existing statuse', async () => {
    const statuseId = statuseIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/statuses/${statuseId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedStatus);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.name).toEqual(updatedStatus.name);
  });

  it('should return an error when statuse not found', async () => {
    const statuseId = statuseIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/statuses/${statuseId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedStatus);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const statuseId = statuseIdTest;
    const response = await request(process.env.BASE_PATH).put(`/api/statuses/${statuseId}`).send(updatedStatus);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/statuses/:id', () => {
  it('Delete one existing statuse', async () => {
    const statuseId = statuseIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/statuses/${statuseId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when statuse not found', async () => {
    const statuseId = statuseIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/statuses/${statuseId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const statuseId = statuseIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/statuses/${statuseId}`);
    expect(response.statusCode).toBe(401);
  });
});
