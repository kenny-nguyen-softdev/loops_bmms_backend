import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

describe('GET /api/payment-methods', () => {
    it('should return a list of payment-methods', async () => {
      const response = await request(process.env.BASE_PATH)
        .get('/api/payment-methods')
        .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
      expect(response.statusCode).toBe(200);
      expect(response.body !== null).toBe(true);
    });
  
    it('should return unauthorized without a valid token', async () => {
      const response = await request(process.env.BASE_PATH).get('/api/payment-methods');
      expect(response.statusCode).toBe(401);
    });
  });