import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

const imageIdTest = 21;

describe('GET /api/images/:id', () => {
  it('should return one existing image', async () => {
    const imageId = imageIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/images/${imageId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(imageId);
  });
  it('Should return an error when image not found', async () => {
    const imageId = imageIdTest + 1500;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/images/${imageId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const imageId = imageIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/images/${imageId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/images/:id/v2', () => {
  it('Delete one existing image ver 2', async () => {
    const imageId = imageIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/images/${imageId}/v2`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when image not found', async () => {
    const imageId = imageIdTest + 1500;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/images/${imageId}/v2`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const imageId = imageIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/images/${imageId}/v2`);
    expect(response.statusCode).toBe(401);
  });
});
