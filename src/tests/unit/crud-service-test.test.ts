import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let serviceIdTest: number;
let testDuplicateSku: string;

const skuInput = 'SkuTest78';

describe('POST /api/services', () => {
  const imagePaths = [`${__dirname}/images/VinDiesel.png`, `${__dirname}/images/RoyFrank.png`];

  //make sure all this id is exists
  const categoryId = null;

  const newService = {
    name: 'Sửa mái nhà',
    categoryId: categoryId,
    sku: '',
    description: '',
    costPrice: 300000,
    salePrice: 500000,
    wholesalePrice: 400000,
    standardUnit: 'm2',
    presignedUrls: null,
  };
  it('should generate pre-sign urls for mutiple images', async () => {
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/services/presigned-url/images/v2')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;

    expect(response.statusCode).toBe(200);
    newService.presignedUrls = response.body.presignedUrls;
  });

  it('create service with multiple image upload', async () => {
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/services')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newService));

    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(201);
    testDuplicateSku = response.body.service.sku;
    serviceIdTest = response.body.service.id;
  });
  it('create service without image upload but sku input', async () => {
    newService.sku = skuInput;
    const response = await request(process.env.BASE_PATH)
      .post('/api/services')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newService));
    expect(response.statusCode).toBe(201);
    expect(response.body.service.sku).toBe(skuInput);
  });
  it('should return an error create service with duplicate sku', async () => {
    newService.sku = testDuplicateSku;
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/services')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newService));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;

    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate sku in service. The sku attribute should be unique');
  });
  it('should return an error for invalid input', async () => {
    const invalidService = {
      categoryId: 'categoryId', //get error invalid type of categoryId
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/services')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(invalidService))
      .attach('files', `${__dirname}/images/VinDiesel.png`);
    expect(response.statusCode).toBe(500);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/services')
      .field('data', JSON.stringify(newService))
      .field('files', imagePaths);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/services', () => {
  it('should return a list of services', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/services')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.data !== null).toBe(true);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/services');
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/services/:id', () => {
  it('should return an existing of services', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/services/${serviceIdTest}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(serviceIdTest);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get(`/api/services/${serviceIdTest}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/services/:id/images/v2/upload', () => {
  let presignedUrls: any;
  it('should generate pre-sign urls for mutiple images', async () => {
    const imagePaths = [`${__dirname}/images/RitaMoreno.png`];
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/services/presigned-url/images/v2')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);

    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(200);
    presignedUrls = response.body;
  });

  it('should upload image', async () => {
    const imagePaths = [`${__dirname}/images/RitaMoreno.png`];
    const requestPromise = request(process.env.BASE_PATH)
      .put(`/api/services/${serviceIdTest}/images/v2/upload`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(presignedUrls));

    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;

    expect(response.statusCode).toBe(200);
    expect(response.body.message).toBe('Uploaded successfully');
  });
  it('should return unauthorized without a valid token', async () => {
    const imagePaths = [`${__dirname}/images/RitaMoreno.png`];
    const requestPromise = request(process.env.BASE_PATH)
      .put(`/api/services/${serviceIdTest}/images/v2/upload`)
      .field('data', JSON.stringify(presignedUrls));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/services/:id', () => {
  const updatedService = {
    name: 'Sửa mái nhà thành trống nhà',
    sku: '',
  };
  it('Update one existing service', async () => {
    const response = await request(process.env.BASE_PATH)
      .put(`/api/services/${serviceIdTest}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedService);
    expect(response.statusCode).toBe(200);
    expect(response.body.data !== null).toBe(true);
    expect(response.body.sku).toBe(testDuplicateSku);
    expect(response.body.name).toEqual(updatedService.name);
  });
  it('should return an error updated service with duplicate sku', async () => {
    const serviceId = serviceIdTest;
    updatedService.sku = skuInput;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/services/${serviceId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedService);
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate sku in service. The sku attribute should be unique');
  });
  it('should return an error when service not found', async () => {
    const serviceId = serviceIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/services/${serviceId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedService);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).put(`/api/services/${serviceIdTest}`).send(updatedService);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/services/reactivate/:id', () => {
  it('should reactive service', async () => {
    const response = await request(process.env.BASE_PATH)
      .put(`/api/services/reactivate/${serviceIdTest}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when service not found', async () => {
    const serviceId = serviceIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/services/reactivate/${serviceId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
    expect(response.body.message).toBe('Not Found');
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).put(`/api/services/reactivate/${serviceIdTest}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/services/:id/images/v2/delete', () => {
  it('Delete all images by service id', async () => {
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/services/${serviceIdTest}/images/v2/delete`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when service not found', async () => {
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/services/${serviceIdTest}/images/v2/delete`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
    expect(response.body.message).toBe('No images found for the service');
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).delete(`/api/services/${serviceIdTest}/images/v2/delete`);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/services/:id', () => {
  it('Delete one existing service', async () => {
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/services/${serviceIdTest}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when service not found', async () => {
    const serviceId = serviceIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/services/${serviceId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).delete(`/api/services/${serviceIdTest}`);
    expect(response.statusCode).toBe(401);
  });
});
