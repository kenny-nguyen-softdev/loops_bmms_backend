import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let voucherGroupIdTest: number;

describe('POST /api/voucher-groups', () => {
  const newVoucherGroup = {
    name: 'money test',
    code: '',
    description: '',
    voucherGroupTypeId: 1,
  };
  it('Create new voucherGroup', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/voucher-groups')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newVoucherGroup);
    expect(response.statusCode).toBe(201);
    expect(response.body !== null).toBe(true);
    voucherGroupIdTest = response.body.id;
  });
  it('should return unauthorized without a valid token', async () => {
    const newVoucherGroupFault = {
      name: 'test voucherGroup',
    };
    const response = await request(process.env.BASE_PATH).post('/api/voucher-groups').send(newVoucherGroupFault);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/voucher-groups', () => {
  it('should return a list of voucherGroups', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/voucher-groups')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });

  it('should return a list of voucherGroups include VoucherGroupType', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/voucher-groups')
      .query({ include: 'VoucherGroupType', limit: 2})
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    response.body.forEach((item: any) => {
        expect(item.VoucherGroupType !== null).toBe(true);
    });
  });

  it('should return a list of voucherGroups limit 2 voucher group', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/voucher-groups')
      .query({limit: 2})
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(2);
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/voucher-groups');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/voucher-groups/:id', () => {
  it('should return one existing voucherGroup', async () => {
    const voucherGroupId = voucherGroupIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/voucher-groups/${voucherGroupId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(voucherGroupId);
  });

  it('should return one existing voucherGroup include VoucherGroupType', async () => {
    const voucherGroupId = voucherGroupIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/voucher-groups/${voucherGroupId}`)
      .query({ include: 'VoucherGroupType'})
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(voucherGroupId);
    expect(response.body.VoucherGroupType !== null).toBe(true);
  });
  it('Should return an error when voucherGroup not found', async () => {
    const voucherGroupId = voucherGroupIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/voucher-groups/${voucherGroupId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const voucherGroupId = voucherGroupIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/voucher-groups/${voucherGroupId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/voucher-groups/:id', () => {
    const updatedVoucherGroup = {
        name: 'money test updated',
        code: '',
        description: '',
        voucherGroupTypeId: 1,
      };
  it('Update one existing voucherGroup', async () => {
    const voucherGroupId = voucherGroupIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/voucher-groups/${voucherGroupId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedVoucherGroup);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.name).toEqual(updatedVoucherGroup.name);
  });

  it('should return an error when voucherGroup not found', async () => {
    const voucherGroupId = voucherGroupIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/voucher-groups/${voucherGroupId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedVoucherGroup);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const voucherGroupId = voucherGroupIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/voucher-groups/${voucherGroupId}`)
      .send(updatedVoucherGroup);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/voucher-groups/:id', () => {
  it('Delete one existing voucherGroup', async () => {
    const voucherGroupId = voucherGroupIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/voucher-groups/${voucherGroupId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when voucherGroup not found', async () => {
    const voucherGroupId = voucherGroupIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/voucher-groups/${voucherGroupId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const voucherGroupId = voucherGroupIdTest;
    const response = await request(process.env.BASE_PATH).delete(`/api/voucher-groups/${voucherGroupId}`);
    expect(response.statusCode).toBe(401);
  });
});
