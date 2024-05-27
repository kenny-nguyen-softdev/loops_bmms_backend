import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let productIdTest: number;

let testDuplicateSku: string;
let testDuplicateBarcode: string;

const skuInput = 'LongdeptraiSku';
const barcodeInput = 'LongdeptraiBarcode';

describe('Test for POST route', () => {
  const imagePaths = [`${__dirname}/images/VinDiesel.png`, `${__dirname}/images/RoyFrank.png`];

  //make sure all this id is exists
  const categoryId = null;
  const brandId = null;
  const weightUnitId = null;
  const sizeUnitId = null;

  const newProduct = {
    name: 'Inox 301',
    categoryId: categoryId,
    brandId: brandId,
    sku: '',
    barcode: '',
    description: '',
    costPrice: 300000,
    salePrice: 500000,
    wholesalePrice: 400000,
    inventoryQuantity: 25,
    standardUnit: 'tấm',
    weight: 2,
    weightUnitId: weightUnitId,
    width: 3.3,
    length: 5.2,
    sizeUnitId: sizeUnitId,
    presignedUrls: null,
  };
  it('should generate pre-sign urls for mutiple images', async () => {
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/products/presigned-url/images/v2')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;

    expect(response.statusCode).toBe(200);
    newProduct.presignedUrls = response.body.presignedUrls;
  });
  it('create product with multiple image upload', async () => {
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/products')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newProduct));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;

    expect(response.statusCode).toBe(201);
    testDuplicateSku = response.body.product.sku;
    testDuplicateBarcode = response.body.product.barcode;
    productIdTest = response.body.product.id;
  });
  it('create product without image upload but sku, bar input', async () => {
    newProduct.sku = skuInput;
    newProduct.barcode = barcodeInput;
    const response = await request(process.env.BASE_PATH)
      .post('/api/products')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newProduct));

    expect(response.statusCode).toBe(201);
    expect(response.body.product.sku).toBe(skuInput);
    expect(response.body.product.barcode).toBe(barcodeInput);
  });
  it('should return an error create product with duplicate sku', async () => {
    newProduct.sku = testDuplicateSku;
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/products')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newProduct));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;

    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate sku in product. The sku attribute should be unique');
  });
  it('should return an error create product with duplicate barcode', async () => {
    newProduct.sku = '';
    newProduct.barcode = testDuplicateBarcode;
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/products')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(newProduct));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate barcode in product. The barcode attribute should be unique');
  });
  it('should return an error for invalid input', async () => {
    const invalidProduct = {
      categoryId: 'categoryId', //get error invalid type of categoryId
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/products')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(invalidProduct))
      .attach('files', `${__dirname}/images/VinDiesel.png`);
    expect(response.statusCode).toBe(500);
  });
});

describe('GET /api/products', () => {
  it('should return a list of products', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/products')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.data !== null).toBe(true);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/products');
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/products/:id', () => {
  it('should return an existing of products', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/products/${productIdTest}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(productIdTest);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get(`/api/products/${productIdTest}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/products/:id/images/v2/upload', () => {
  const imagePaths = [`${__dirname}/images/RitaMoreno.png`];
  let presignedUrls: any;
  it('should generate pre-sign urls for mutiple images', async () => {
    const requestPromise = request(process.env.BASE_PATH)
      .post('/api/products/presigned-url/images/v2')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);

    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(200);
    presignedUrls = response.body;
  });
  it('should upload multiple images', async () => {
    const productId = productIdTest;
    const requestPromise = request(process.env.BASE_PATH)
      .put(`/api/products/${productId}/images/v2/upload`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(presignedUrls));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;

    expect(response.statusCode).toBe(200);
    response.body.uploadedImages.forEach((product: { productId: number }) => {
      expect(product.productId).toBe(productId);
    });
  });
  it('should return error not found productId', async () => {
    const requestPromise = request(process.env.BASE_PATH)
      .put(`/api/products/${productIdTest + 15}/images/v2/upload`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .field('data', JSON.stringify(presignedUrls));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const productId = productIdTest;
    const requestPromise = request(process.env.BASE_PATH)
      .put(`/api/products/${productId}/images/v2/upload`)
      .field('data', JSON.stringify(presignedUrls));
    for (const imagePath of imagePaths) {
      requestPromise.attach('files', imagePath);
    }
    const response = await requestPromise;
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/products/:id', () => {
  const updatedProduct = {
    name: 'Inox 301 update name',
    sku: '',
    barcode: '',
  };
  it('Update one existing product', async () => {
    const productId = productIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/products/${productId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedProduct);
    expect(response.statusCode).toBe(200);
    expect(response.body.data !== null).toBe(true);
    expect(response.body.updatedProduct.sku).toBe(testDuplicateSku);
    expect(response.body.updatedProduct.barcode).toBe(testDuplicateBarcode);
    expect(response.body.updatedProduct.name).toEqual(updatedProduct.name);
  });
  it('should return an error updated product with duplicate sku', async () => {
    const productId = productIdTest;
    updatedProduct.sku = skuInput;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/products/${productId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedProduct);
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate sku in product. The sku attribute should be unique');
  });
  it('should return an error updated product with duplicate barcode', async () => {
    const productId = productIdTest;
    updatedProduct.sku = '';
    updatedProduct.barcode = barcodeInput;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/products/${productId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedProduct);
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate barcode in product. The barcode attribute should be unique');
  });

  it('should return an error when product not found', async () => {
    const productId = productIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/products/${productId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedProduct);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const productId = productIdTest;
    const response = await request(process.env.BASE_PATH).put(`/api/products/${productId}`).send(updatedProduct);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/products/reactivate/:id', () => {
  it('should reactive product', async () => {
    const productId = productIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/products/reactivate/${productId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when product not found', async () => {
    const productId = productIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/products/reactivate/${productId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
    expect(response.body.message).toBe('Not Found');
  });
  it('should return unauthorized without a valid token', async () => {
    const productId = productIdTest + 15;
    const response = await request(process.env.BASE_PATH).put(`/api/products/reactivate/${productId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/products/:id/images/v2/delete', () => {
  it('Delete all images by product id ver 2', async () => {
    const productId = productIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/products/${productId}/images/v2/delete`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when product not found', async () => {
    const productId = productIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/products/${productId}/images/v2/delete`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
    expect(response.body.message).toBe('No images found for the product');
  });
  it('should return unauthorized without a valid token', async () => {
    const productId = productIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/products/${productId}/images/v2/delete`);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/products/:id', () => {
  it('Delete one existing product', async () => {
    const productId = productIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/products/${productId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when product not found', async () => {
    const productId = productIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/products/${productId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const productId = productIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/products/${productId}`);
    expect(response.statusCode).toBe(401);
  });
});
