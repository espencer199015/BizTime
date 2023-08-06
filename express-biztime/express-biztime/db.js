/** Database setup for BizTime. */
// db.js

const { Pool } = require('pg');

// Replace the connection string with your actual database configuration
const pool = new Pool({
  user: 'your_postgres_user',
  host: 'localhost',
  database: 'biztime',
  password: 'your_postgres_password',
  port: 5432,
});

module.exports = pool;