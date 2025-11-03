CREATE SCHEMA university;
CREATE TABLE university.Students(
  student_id SERIAL PRIMARY KEY,
  first_name varchar(50) NOT Null,
  last_name  varchar(50) Not Null,
  birth_date date,
  email varchar(100) not null UNIQUE
);

CREATE TABLE university.Courses(
   course_id SERIAL PRIMARY KEY,
   course_name varchar(100) not null,
   credits int
);

CREATE TABLE university.Enrollments (
   enrollment_id SERIAL PRIMARY KEY,
   student_id INT REFERENCES university.Students(student_id),
   course_id INt REFERENCES university.Courses(course_id),
   enroll_date date
);

// thực hiện các câu lệnh

SELECT datname FROM pg_database; // xem các danh sách db

SELECT schema_name FROM information_schema.schemata; // xem các schema

SELECT column_name, data_type, is_nullable FROM information_schema.columns
WHERE table_schema = 'university'
AND table_name = 'students';

SELECT column_name, data_type, is_nullable FROM information_schema.columns
WHERE table_schema = 'university'
AND table_name = 'courses';

SELECT column_name, data_type, is_nullable FROM information_schema.columns
WHERE table_schema = 'university'
AND table_name = 'enrollments';
