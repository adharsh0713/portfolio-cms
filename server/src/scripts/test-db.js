import { pool } from '../config/db.js';

const testDb = async () => {
  const result = await pool.query('SELECT NOW()');

  console.log(result.rows);

  process.exit(0);
};

testDb();
