const { Pool } = require('pg');

const cohort = process.argv[2];

const sqlQuery = `
SELECT teachers.name AS teacher, cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = '${cohort || "JUL02"}'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;`;

const pool = new Pool( {
  user:     'vagrant',
  password: '123',
  host:     'localhost',
  database: 'bootcampx',
  port:     5432
})


pool
.query(sqlQuery)
.then(res => {
  console.log("connected"); 
  res.rows.forEach(data => {
    console.log(`${data.cohort}: ${data.teacher}`);
  });
})
.catch(err => console.error('Error executing query', err.stack))

// Code commented to have it as reference while trying 
// different ways to work with pg module.
//
// pool.connect((err, client, release) => {
//   if (err) {
//     return console.error('Error aqcquiring client', err.stack)
//   }
//   client.query(sqlQuery, (err, res) => {
//     release()
//     if (err) {
//       return console.error('Error executing query', err.stack)
//     }
//     console.log("connected"); 
//     res.rows.forEach(data => {
//       console.log(`${data.cohort}: ${data.teacher}`);
//     });
//   })
// })

// pool.query(sqlQuery)
//   .then(res => {
//     //console.log(res.rows);
//     res.rows.forEach(data => {
//       console.log(`${data.cohort}: ${data.teacher}`);
//     });
//   })
//   .catch(err => console.log('query error', err.stack));



