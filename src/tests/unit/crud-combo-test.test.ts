import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let comboIdTest: number;
let testDuplicateSku: string;
let testDuplicateBarcode: string;

const skuInput = "LongdeptraiSku1";
const barcodeInput = "LongdeptraiBarcode1";
describe('POST /api/combos', () => {
  const imagePaths = [`${__dirname}/images/VinDiesel.png`, `${__dirname}/images/RoyFrank.png`];
  //make sure all this id is exists
  const categoryId = 1;
  const brandId = 1;
  const weightUnitId = null;
  const inputTaxId = null;
  const outputTaxId = null;
  const productItems01 = 15;
  const productItems02 = 17;
  const serviceItems01 = 1;

  const newCombo = {
    categoryId: categoryId,
    brandId: brandId,
    sku: '',
    barcode: '',
    name: 'Combo1',
    description: 'han cua sat',
    costPrice: 555,
    salePrice: 99,
    wholesalePrice: 85,
    standardUnit: 'piece',
    weight: 5,
    weightUnitId: weightUnitId,
    isActive: true,
    isConsistOfSalePrice: false,
    inputTaxId: inputTaxId,
    outputTaxId: outputTaxId,
    productItems: [
      {
        id: productItems01,
        quantity: 22,
      },
      {
        id: productItems02,
        quantity: 44,
      },
    ],
    serviceItems: [
      {
        id: serviceItems01,
        quantity: 11,
      },
    ],
    presignedUrls: null,
  };
  it('should generate pre-sign urls for multiple images', async () => {
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/combos/presigned-url/images')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(200);
    newCombo.presignedUrls = response.body.presignedUrls;
  });
  it('create combo with multiple image upload', async () => {
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/combos')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newCombo));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;

    expect(response.statusCode).toBe(201);
    comboIdTest = response.body.combo.id;
    testDuplicateSku = response.body.combo.sku;
    testDuplicateBarcode = response.body.combo.barcode;
  });
  it('create combo without image upload but sku, bar input', async () => {
    newCombo.sku = skuInput;
    newCombo.barcode = barcodeInput;
    const response = await request(process.env.BASE_PATH)
      .post('/api/combos')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newCombo));
    expect(response.statusCode).toBe(201);
    expect(response.body.combo.sku).toBe(skuInput);
    expect(response.body.combo.barcode).toBe(barcodeInput);
  });
  it('should return an error create combo with duplicate sku', async () => {
    newCombo.sku = testDuplicateSku;
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/combos')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newCombo));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;

    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate sku in combo. The sku attribute should be unique');
  });
  it('should return an error create combo with duplicate barcode', async () => {
    newCombo.sku = '';
    newCombo.barcode = testDuplicateBarcode;
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/combos')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newCombo));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate barcode in combo. The barcode attribute should be unique');
  });
  it('should return an error for invalid input', async () => {
    const invalidCombo = {
      categoryId: 'categoryId', //get error invalid type of categoryId
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/combos')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(invalidCombo))
      .attach('files', `${__dirname}/images/VinDiesel.png`);
    expect(response.statusCode).toBe(500);
  });
});

describe('GET /api/combos', () => {
  it('should return a list of combos', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/combos')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return a list of combos limit 3 combos', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/combos')
      .query({ orderBy: 'name', limit: 3 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(3);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/combos');
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/combos/:id', () => {
  it('should return one existing combo', async () => {
    const comboId = comboIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/combos/${comboId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(comboId);
  });
  it('Should return an error when combo not found', async () => {
    const comboId = comboIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/combos/${comboId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const comboId = comboIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/combos/${comboId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/combos/:id/images/upload', () => {
  const imagePaths = [`${__dirname}/images/RitaMoreno.png`];
  let presignedUrls: any;
  it('should generate pre-sign urls for mutiple images', async () => {
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/combos/presigned-url/images')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);

    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(200);
    presignedUrls = response.body;
  });
  it('should upload multiple images', async () => {
    const comboId = comboIdTest;
    const requestPromise = request(process.env.BASE_PATH)
      .put(`/api/combos/${comboId}/images/upload`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(presignedUrls));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;

    expect(response.statusCode).toBe(200);
    response.body.uploadedImages.forEach((combo: { comboId: number }) => {
      expect(combo.comboId).toBe(comboId);
    });
  });
  it('should return error not found comboId', async () => {
    const requestPromise = request(process.env.BASE_PATH)
      .put(`/api/combos/${comboIdTest + 15}/images/upload`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(presignedUrls));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const comboId = comboIdTest;
    const requestPromise = request(process.env.BASE_PATH)
      .put(`/api/combos/${comboId}/images/upload`)
      .field('data', JSON.stringify(presignedUrls));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(401);
  });
});
describe('PUT /api/combos/:id', () => {
  const updatedCombo = {
    // The properties for the update combo
    sku: '',
    barcode: '',
    name: 'Combo1 update',
  };
  it('Update one existing combo', async () => {
    const comboId = comboIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/combos/${comboId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedCombo);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.updatedCombo.sku).toBe(testDuplicateSku);
    expect(response.body.updatedCombo.barcode).toBe(testDuplicateBarcode);
    expect(response.body.updatedCombo.name).toEqual(updatedCombo.name);
  });
  it('should return an error updated combo with duplicate sku', async () => {
    const comboId = comboIdTest;
    updatedCombo.sku = skuInput;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/combos/${comboId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedCombo);
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate sku in combo. The sku attribute should be unique');
  });
  it('should return an error updated combo with duplicate barcode', async () => {
    const comboId = comboIdTest;
    updatedCombo.sku = '';
    updatedCombo.barcode = barcodeInput;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/combos/${comboId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedCombo);
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate barcode in combo. The barcode attribute should be unique');
  });

  it('should return an error when combo not found', async () => {
    const comboId = comboIdTest + 150;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/combos/${comboId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedCombo);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const comboId = comboIdTest;
    const response = await request(process.env.BASE_PATH).put(`/api/combos/${comboId}`).send(updatedCombo);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/combos/reactivate/:id', () => {
  it('should reactive combo', async () => {
    const comboId = comboIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/combos/reactivate/${comboId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when combo not found', async () => {
    const comboId = comboIdTest + 150;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/combos/reactivate/${comboId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.body.data).toBe(404);
    expect(response.body.message).toBe('Not found combo');
  });
  it('should return unauthorized without a valid token', async () => {
    const comboId = comboIdTest + 15;
    const response = await request(process.env.BASE_PATH).put(`/api/combos/reactivate/${comboId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/combos/:id/images/delete', () => {
  it('Delete all images by combo id ver 2', async () => {
    const comboId = comboIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/combos/${comboId}/images/delete`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when combo not found', async () => {
    const comboId = comboIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/combos/${comboId}/images/delete`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
    expect(response.body.message).toBe('No images found for the combo');
  });
  it('should return unauthorized without a valid token', async () => {
    const comboId = comboIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/combos/${comboId}/images/delete`);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/combos/:id', () => {
  it('Delete one existing combo', async () => {
    const comboId = comboIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/combos/${comboId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when combo not found', async () => {
    const comboId = comboIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/combos/${comboId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const comboId = comboIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/combos/${comboId}`);
    expect(response.statusCode).toBe(401);
  });
});
