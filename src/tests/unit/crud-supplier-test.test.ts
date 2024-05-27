import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let supplierIdTest: number;
let testDuplicateCode: string;

const codeInput = 'SUPN53685';

//make sure all this id is exists
const supplierGroupId = null;
const wardId = null;
const personGroupTypeId = 1;
describe('Test for POST route', () => {
  const newSupplier = {
    name: 'Hoa Sen',
    supplierGroupId: supplierGroupId,
    code: '',
    email: '',
    mobile: '',
    company: '',
    faxId: '',
    taxId: '',
    website: '',
    address: '',
    wardId: wardId,
    description: '',
    personGroupTypeId: personGroupTypeId,
  };
  it('create supplier auto generate code ', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/suppliers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newSupplier);
    expect(response.statusCode).toBe(201);
    testDuplicateCode = response.body.code;
    supplierIdTest = response.body.id;
  });
  it('create supplier with code input', async () => {
    newSupplier.code = codeInput;
    const response = await request(process.env.BASE_PATH)
      .post('/api/suppliers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newSupplier);
    expect(response.statusCode).toBe(201);
    expect(response.body.code).toBe(codeInput);
  });
  it('should return an error create supplier with duplicate code', async () => {
    newSupplier.code = testDuplicateCode;
    const response = await request(process.env.BASE_PATH)
      .post('/api/suppliers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newSupplier);

    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate code in supplier. The code attribute should be unique');
  });
  it('should return an error for invalid input', async () => {
    const invalidSupplier = {
      wardId: 'wardId',
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/suppliers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(invalidSupplier);
    expect(response.statusCode).toBe(400);
  });
});
describe('GET api/suppliers', () => {
  it('should return a list of suppliers', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/suppliers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return a list of suppliers  limit 3', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/suppliers')
      .query({ orderBy: 'id', limit: 3 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(3);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/suppliers');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/suppliers/:id', () => {
  it('should return an existing of suppliers', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/suppliers/${supplierIdTest}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(supplierIdTest);
  });
  it('should return an existing of suppliers include PersonGroupType', async () => {
    const response = await request(process.env.BASE_PATH)
      .get(`/api/suppliers/${supplierIdTest}`)
      .query({ include: 'PersonGroupType' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(supplierIdTest);
    expect(response.body.PersonGroupType !== null).toBe(true);
  });
  it('should return error not found supplier', async () => {
    const supplierId = supplierIdTest + 150;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/suppliers/${supplierId}`)
      .query({ include: 'SupplierGroup' })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get(`/api/suppliers/${supplierIdTest}`);
    expect(response.statusCode).toBe(401);
  });
});
describe('PUT /api/suppliers/:id', () => {
  const updatedSupplier = {
    name: 'Hoa Sen Update',
    supplierGroupId: supplierGroupId,
    code: '',
    email: '',
    mobile: '',
    company: '',
    faxId: '',
    taxId: '',
    website: '',
    address: '',
    wardId: wardId,
    description: '',
    personGroupTypeId: personGroupTypeId,
  };
  it('Update one existing supplier', async () => {
    const supplierId = supplierIdTest;

    const response = await request(process.env.BASE_PATH)
      .put(`/api/suppliers/${supplierId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedSupplier);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.name).toEqual(updatedSupplier.name);
  });
  it('should return an error updated supplier with duplicate code', async () => {
    const supplierId = supplierIdTest;
    updatedSupplier.code = codeInput;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/suppliers/${supplierId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedSupplier);
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Duplicate code in supplier. The code attribute should be unique');
  });
  it('should return an error when supplier not found', async () => {
    const supplierId = supplierIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/suppliers/${supplierId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedSupplier);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const supplierId = supplierIdTest;
    const response = await request(process.env.BASE_PATH).put(`/api/suppliers/${supplierId}`).send(updatedSupplier);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/suppliers/:id', () => {
  it('Delete one existing supplier', async () => {
    const supplierId = supplierIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/suppliers/${supplierId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when supplier not found', async () => {
    const supplierId = supplierIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/suppliers/${supplierId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const supplierId = supplierIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/suppliers/${supplierId}`);
    expect(response.statusCode).toBe(401);
  });
});
