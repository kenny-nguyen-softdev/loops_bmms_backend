import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let userIdTest: number;

describe('POST /api/users', () => {
  const newUser = {
    name: 'tester',
    username: 'tst',
    email: 'test12@gmail.com',
    password: '12345678',
    personGroupTypeId: 1
  };
  it('Create new user', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/users')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newUser);
    expect(response.statusCode).toBe(201);
    expect(response.body !== null).toBe(true);
    userIdTest = response.body.id;
  });
  it('Should return an error when user email is existed', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/users')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newUser);
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Validation error');
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH)
    .post('/api/users')
    .send(newUser);
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/users', () => {
  it('should return a list of users', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/users')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/users');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/users/:id', () => {
  it('should return one existing user', async () => {
    const userId = userIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/users/${userId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(userId);
  });
  it('Should return an error when user not found', async () => {
    const userId = userIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/users/${userId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const userId = userIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/users/${userId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/users/:id', () => {
  const updatedUser = {
    name: 'tester updated name',
    username: 'tst',
    email: 'test12@gmail.com',
    password: '12345678',
    personGroupTypeId: 1
  };
  it('Update one existing user', async () => {
    const userId = userIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/users/${userId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedUser);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.name).toEqual(updatedUser.name);
    expect(response.body.email).toEqual(updatedUser.email);
  });

  it('should return an error when user not found', async () => {
    const userId = userIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/users/${userId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedUser);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const userId = userIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/users/${userId}`)
      .send(updatedUser);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/users/:id', () => {
  it('Delete one existing user', async () => {
    const userId = userIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/users/${userId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when user not found', async () => {
    const userId = userIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/users/${userId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const userId = userIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/users/${userId}`);
    expect(response.statusCode).toBe(401);
  });
});
