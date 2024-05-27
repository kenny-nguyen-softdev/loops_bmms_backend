import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

describe('GET /api/unit-types', () => {
  it('should return a list of unit-types', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/unit-types')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.data !== null).toBe(true);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/unit-types');
    expect(response.statusCode).toBe(401);
  });
});