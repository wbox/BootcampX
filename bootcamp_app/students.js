
const { Pool } = require('pg');

const cohort = process.argv[2];
const limit = process.argv[3];

const pool = new Pool( {
  user:     'vagrant',
  password: '123',
  host:     'localhost',
  database: 'bootcampx',
  port:     5432
});

pool.query(
  `SELECT students.id, students.name, cohorts.name AS cohort
  FROM students 
  JOIN cohorts ON cohorts.id = students.cohort_id
  WHERE cohorts.name LIKE '%${cohort}%'
  LIMIT ${limit || 5};`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} has an id ${user.id} and was in the ${user.cohort} cohort`);
    });
  })
  .catch(err => console.log('query error', err.stack));



