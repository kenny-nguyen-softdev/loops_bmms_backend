import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';
let voucherIdTest: number;

const voucherTypeId = 2;
const personGroupTypeId = 1;
const voucherGroupId = null;
const customerId = null;
const supplierId = null;
const staffId = null;
const paymentMethodId = null;

describe('POST /api/vouchers', () => {
  const newVoucher = {
    voucherTypeId: voucherTypeId,
    value: 550000,
    description: '',
    recordedDate: '07/11/2023 11:55:33',
    voucherGroupId: voucherGroupId,
    customerId: customerId,
    supplierId: supplierId,
    staffId: staffId,
    personGroupTypeId: personGroupTypeId,
    paymentMethodId: paymentMethodId,
  };
  it('Create new voucher', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/vouchers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newVoucher);
    expect(response.statusCode).toBe(201);
    expect(response.body !== null).toBe(true);
    voucherIdTest = response.body.id;
  });
  it('Should auto generate code for new voucher', async () => {
    const voucherId = voucherIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/vouchers/${voucherId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(voucherId);
    expect(response.body.code !== null).toBe(true);
  });
  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).post('/api/vouchers').send(newVoucher);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/vouchers', () => {
  it('should return a list of vouchers', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/vouchers')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
  });
  it('should return a list of vouchers limmit 3 ', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/vouchers')
      .query({limit:  3 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    expect(response.body.length).toBe(3);
  });
  it('should return a list of vouchers include VoucherType ', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/vouchers')
      .query({ include: 'VoucherType', limit:  3 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    response.body.forEach((item: any) => {
        expect(item.voucherType !== null).toBe(true);
    });
  });
  it('should return a list of vouchers include VoucherGroup ', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/vouchers')
      .query({ include: 'VoucherGroup', limit:  3 })
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body !== null).toBe(true);
    response.body.forEach((item: any) => {
        expect(item.VoucherGroup !== null).toBe(true);
    });
  });

  it('should return unauthorized without a valid token', async () => {
    const response = await request(process.env.BASE_PATH).get('/api/vouchers');
    expect(response.statusCode).toBe(401);
  });
});
describe('GET /api/vouchers/:id', () => {
  it('should return one existing voucher', async () => {
    const voucherId = voucherIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/vouchers/${voucherId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(voucherId);
  });
  it('should return one existing voucher include VoucherType', async () => {
    const voucherId = voucherIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/vouchers/${voucherId}`)
      .query({ include: 'VoucherType'})
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(voucherId);
    expect(response.body.VoucherType !== null).toBe(true);
  });
  it('should return one existing voucher include VoucherGroup', async () => {
    const voucherId = voucherIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/vouchers/${voucherId}`)
      .query({ include: 'VoucherGroup'})
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(voucherId);
    expect(response.body.VoucherGroup !== null).toBe(true);
  });
  it('Should return an error when voucher not found', async () => {
    const voucherId = voucherIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/vouchers/${voucherId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const voucherId = voucherIdTest;
    const response = await request(process.env.BASE_PATH).get(`/api/vouchers/${voucherId}`);
    expect(response.statusCode).toBe(401);
  });
});
describe('PUT /api/vouchers/:id', () => {
    const updatedVoucher = {
      voucherTypeId: voucherTypeId,
      value: 100000,
      description: '',
      recordedDate: '07/25/2023 11:55:33',
      voucherGroupId: voucherGroupId,
      customerId: customerId,
      supplierId: supplierId,
      staffId: staffId,
      personGroupTypeId: personGroupTypeId,
      paymentMethodId: paymentMethodId,
    };
    it('Update one existing voucher', async () => {
      const voucherId = voucherIdTest;
      const response = await request(process.env.BASE_PATH)
        .put(`/api/vouchers/${voucherId}`)
        .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
        .send(updatedVoucher);
      expect(response.statusCode).toBe(200);
      expect(response.body !== null).toBe(true);
      expect(response.body.value).toEqual(updatedVoucher.value);
    });
  
    it('should return an error when voucher not found', async () => {
      const voucherId = voucherIdTest + 15;
      const response = await request(process.env.BASE_PATH)
        .put(`/api/vouchers/${voucherId}`)
        .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
        .send(updatedVoucher);
      expect(response.statusCode).toBe(404);
    });
    it('should return unauthorized without a valid token', async () => {
      const voucherId = voucherIdTest;
      const response = await request(process.env.BASE_PATH).put(`/api/vouchers/${voucherId}`).send(updatedVoucher);
      expect(response.statusCode).toBe(401);
    });
  });