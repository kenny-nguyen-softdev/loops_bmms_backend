import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let brandIdTest: number;

describe('POST /api/brands', () => {
  const newBrand = {
    name: 'test brand no 1',
  };
  it('Create new brand', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/brands')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newBrand);
    expect(response.statusCode).toBe(201);
    expect(response.body !== null).toBe(true);
    brandIdTest = response.body.id;
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).post('/api/brands').send(newBrand);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/brands', () => {
  it('should return a list of brands', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/brands')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/brands');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/brands/:id', () => {
  it('should return one existing brand', async () => {
    const brandId = brandIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/brands/${brandId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(brandId);
  });
  it('Should return an error when brand not found', async () => {
    const brandId = brandIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/brands/${brandId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const brandId = brandIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/brands/${brandId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/brands/:id', () => {
  it('Update one existing brand', async () => {
    const brandId = brandIdTest;
    const updatedBrand = {
      name: 'test brand no 1 update name',
    };
    const response = await request(process.env.BASE_PATH)
      .put(`/api/brands/${brandId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedBrand);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.name).toEqual(updatedBrand.name);
  });

  it('should return an error when brand not found', async () => {
    const brandId = brandIdTest + 15;
    const updatedBrand = {
      name: 'test brand no 1 update name',
    };
    const response = await request(process.env.BASE_PATH)
      .put(`/api/brands/${brandId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedBrand);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const brandId = brandIdTest;
    const updatedBrand = {
      name: 'test brand no 1 update name',
    };
    const response = await request(process.env.BASE_PATH).put(`/api/brands/${brandId}`).send(updatedBrand);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/brands/reactivate/:id', () => {
  it('should reactive brand', async () => {
    const brandId = brandIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/brands/reactivate/${brandId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when brand not found', async () => {
    const brandId = brandIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/brands/reactivate/${brandId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
    expect(response.body.message).toBe('Not Found');
  });
  it('should return unauthorized without a valid token', async () => {
    const brandId = brandIdTest + 15;
    const response = await request(process.env.BASE_PATH).put(`/api/brands/reactivate/${brandId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/brands/:id', () => {
  it('Delete one existing brand', async () => {
    const brandId = brandIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/brands/${brandId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when brand not found', async () => {
    const brandId = brandIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/brands/${brandId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const brandId = brandIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/brands/${brandId}`);
    expect(response.statusCode).toBe(401);
  });
});
