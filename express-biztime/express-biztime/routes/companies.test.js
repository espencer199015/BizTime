// routes/companies/__tests__/companies.test.js

const request = require('supertest');
const app = require('../../app');
const db = require('../../db');

beforeAll(async () => {
  // Set up any necessary database preparation before running tests
});

afterAll(async () => {
  // Close the database connection after running all tests
  await db.end();
});

describe('GET /companies', () => {
  test('should return a list of companies', async () => {
    const response = await request(app).get('/companies');
    expect(response.status).toBe(200);
    expect(response.body).toHaveProperty('companies');
    expect(response.body.companies).toHaveLength(2); // Change this to the number of companies you expect to have
  });
});

// Write more test cases for other routes as needed
