import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let supplierGroupsIdTest: number;

describe('POST /api/supplier-groups', () => {
  const newSupplierGroup = {
    name: 'test supplierGroups no 1',
  };
  it('Create new supplierGroups', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/supplier-groups')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newSupplierGroup);
    expect(response.statusCode).toBe(201);
    expect(response.body !== null).toBe(true);
    supplierGroupsIdTest = response.body.id;
  });
  it('should return unauthorized without a valid token', async () => {
    const newSupplierGroupFault = {
      name: 'test supplierGroups',
    };
    const response = await request(process.env.BASE_PATH).post('/api/supplier-groups').send(newSupplierGroupFault);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/supplier-groups', () => {
  it('should return a list of supplierGroupss', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/supplier-groups')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/supplier-groups');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/supplier-groups/:id', () => {
  it('should return one existing supplierGroups', async () => {
    const supplierGroupsId = supplierGroupsIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/supplier-groups/${supplierGroupsId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(supplierGroupsId);
  });
  it('Should return an error when supplierGroups not found', async () => {
    const supplierGroupsId = supplierGroupsIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/supplier-groups/${supplierGroupsId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const supplierGroupsId = supplierGroupsIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/supplier-groups/${supplierGroupsId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/supplier-groups/:id', () => {
  it('Update one existing supplierGroups', async () => {
    const supplierGroupsId = supplierGroupsIdTest;
    const updatedSupplierGroup = {
      name: 'test supplierGroups no 1 update name',
    };
    const response = await request(process.env.BASE_PATH)
      .put(`/api/supplier-groups/${supplierGroupsId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedSupplierGroup);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.name).toEqual(updatedSupplierGroup.name);
  });

  it('should return an error when supplierGroups not found', async () => {
    const supplierGroupsId = supplierGroupsIdTest + 15;
    const updatedSupplierGroup = {
      name: 'test supplierGroups no 1 update name',
    };
    const response = await request(process.env.BASE_PATH)
      .put(`/api/supplier-groups/${supplierGroupsId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedSupplierGroup);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const supplierGroupsId = supplierGroupsIdTest;
    const updatedSupplierGroup = {
      name: 'test supplierGroups no 1 update name',
    };
    const response = await request(process.env.BASE_PATH).put(`/api/supplier-groups/${supplierGroupsId}`).send(updatedSupplierGroup);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/supplier-groups/:id', () => {
  it('Delete one existing supplierGroups', async () => {
    const supplierGroupsId = supplierGroupsIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/supplier-groups/${supplierGroupsId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when supplierGroups not found', async () => {
    const supplierGroupsId = supplierGroupsIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/supplier-groups/${supplierGroupsId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const supplierGroupsId = supplierGroupsIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/supplier-groups/${supplierGroupsId}`);
    expect(response.statusCode).toBe(401);
  });
});
