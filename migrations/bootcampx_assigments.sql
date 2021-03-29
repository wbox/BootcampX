CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  day DATE NOT NULL,
  chapther INTEGER,
  duration FLOAT
);




CREATE TABLE assigment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assigment_
)