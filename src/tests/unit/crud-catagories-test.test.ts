import dotenv from 'dotenv';
dotenv.config();
import request from 'supertest';

let catagoryIdTest: number;

describe('POST /api/categories', () => {
  const newCategory01 = {
    name: 'categories test 01',
  };
  let categoryId01: number;
  let categoryId02: number;
  let categoryId03: number;

  //create fisrt category
  it('Create new Category', async () => {
    const response = await request(process.env.BASE_PATH)
      .post('/api/categories')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newCategory01);
    expect(response.statusCode).toBe(201);
    expect(response.body.data !== null).toBe(true);
    categoryId01 = response.body.id;
    catagoryIdTest = categoryId01;
  });

  //create second category reference first category

  it('Create new Category ref Category01', async () => {
    const newCategory02 = {
      name: 'categories02 test ref Category01',
      categoryId: categoryId01,
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/categories')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newCategory02);
    expect(response.statusCode).toBe(201);
    expect(response.body.data !== null).toBe(true);
    categoryId02 = response.body.id;
  });

  //create third category reference second category
  it('Create new Category ref Category02', async () => {
    const newCategory03 = {
      name: 'categories03 test ref Category02',
      categoryId: categoryId02,
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/categories')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newCategory03);
    expect(response.statusCode).toBe(201);
    expect(response.body.data !== null).toBe(true);
    categoryId03 = response.body.id;
  });
  // create fourth category reference third category and get error
  it('Should return error when create new Category ref Category03', async () => {
    const newCategory04 = {
      name: 'categories test ref Category04',
      categoryId: categoryId03,
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/categories')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(newCategory04);
    expect(response.statusCode).toBe(500);
    expect(response.body.message).toBe('Category depth level exceeded (maximum depth: 3)');
  });

  it('should return unauthorized without a valid token', async () => {
    const newCategory03 = {
      name: 'categories03 test ref Category02',
      categoryId: categoryId02,
    };
    const response = await request(process.env.BASE_PATH)
      .post('/api/categories')
      .send(newCategory03);
    expect(response.statusCode).toBe(401);
  });
});

describe('GET /api/categories', () => {
  it('should return a list of categories', async () => {
    const response = await request(process.env.BASE_PATH)
      .get('/api/categories')
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.data !== null).toBe(true);
  });
});
describe('GET /api/categories/:id', () => {
  it('should return one existing categories', async () => {
    const categoryId = catagoryIdTest;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/categories/${categoryId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
    expect(response.body.id).toBe(categoryId);
  });
  it('Should return an error when categories not found', async () => {
    const categoryId = catagoryIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .get(`/api/categories/${categoryId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const categoryId = catagoryIdTest + 15;
    const response = await request(process.env.BASE_PATH).get(`/api/categories/${categoryId}`);
    expect(response.statusCode).toBe(401);
  });
});
describe('PUT /api/categories/:id', () => {
  it('Update one existing category', async () => {
    const categoryId = catagoryIdTest;
    const updatedCatagory = {
      name: 'categories test 01 updated name',
    };
    const response = await request(process.env.BASE_PATH)
      .put(`/api/categories/${categoryId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedCatagory);
    expect(response.statusCode).toBe(200);
    expect(response.body.data !== null).toBe(true);
    expect(response.body.name).toEqual(updatedCatagory.name);
  });
  it('Should return an error when categories not found', async () => {
    const categoryId = catagoryIdTest + 15;
    const updatedCatagory = {
      name: 'categories test 01 updated name',
    };
    const response = await request(process.env.BASE_PATH)
      .put(`/api/categories/${categoryId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`)
      .send(updatedCatagory);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const categoryId = catagoryIdTest + 15;
    const updatedCatagory = {
      name: 'categories test 01 updated name',
    };
    const response = await request(process.env.BASE_PATH).put(`/api/categories/${categoryId}`).send(updatedCatagory);
    expect(response.statusCode).toBe(401);
  });
});

describe('PUT /api/categories/reactivate/:id', () => {
  it('should reactive categorie', async () => {
    const categoryId = catagoryIdTest;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/categories/reactivate/${categoryId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when categorie not found', async () => {
    const categoryId = catagoryIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .put(`/api/categories/reactivate/${categoryId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
    expect(response.body.message).toBe('Not Found');
  });
  it('should return unauthorized without a valid token', async () => {
    const categoryId = catagoryIdTest + 15;
    const response = await request(process.env.BASE_PATH).put(`/api/categories/reactivate/${categoryId}`);
    expect(response.statusCode).toBe(401);
  });
});

describe('DELETE /api/categories/:id', () => {
  it('Delete one existing category', async () => {
    const categoryId = catagoryIdTest;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/categories/${categoryId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(200);
  });
  it('should return an error when category not found', async () => {
    const categoryId = catagoryIdTest + 15;
    const response = await request(process.env.BASE_PATH)
      .delete(`/api/categories/${categoryId}`)
      .set('Authorization', `Bearer ${process.env.UNIT_TEST_BEARER_TOKEN}`);
    expect(response.statusCode).toBe(404);
  });
  it('should return unauthorized without a valid token', async () => {
    const categoryId = catagoryIdTest + 15;
    const response = await request(process.env.BASE_PATH).delete(`/api/categories/${categoryId}`);
    expect(response.statusCode).toBe(401);
  });
});
