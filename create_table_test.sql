/*

Welcome to your final assessment test! This will test your knowledge of the previous section, focused on creating databases and table operations. This test will actually consist of a more open-ended assignment below:

Complete the following task:

Create a new database called "School" this database should have two tables: teachers and students.

The students table should have columns for student_id, first_name,last_name, homeroom_number, phone,email, and graduation year.

The teachers table should have columns for teacher_id, first_name, last_name,

homeroom_number, department, email, and phone.

The constraints are mostly up to you, but your table constraints do have to consider the following:

 1. We must have a phone number to contact students in case of an emergency.

 2. We must have ids as the primary key of the tables
 3. Phone numbers and emails must be unique to the individual.

*/

/* To create the database  simply right-click on the databases drop down menu and select "New Database"*/

/* create students table */
CREATE TABLE students (
student_id  serial PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(60) NOT NULL, 
homeroom_number integer,
phone_number VARCHAR(20) UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE,
graduation_year integer
);

/* create teacher table */

CREATE TABLE teachers(
teacher_id serial PRIMARY KEY,
first_name VARCHAR(50) NOT NULL, 
last_name VARCHAR(50) NOT NULL, 
homeroom_number integer,
department VARCHAR(50),
email VARCHAR(30) UNIQUE,
phone VARCHAR(20) UNIQUE
);

/*
Once you've made the tables, insert a student named Mark Watney (student_id=1) 
who has a phone number of 777-555-1234 and doesn't have an email. He graduates in 2035 and has 5 as a homeroom number.
*/

INSERT INTO students (
first_name,
last_name,
hoomeroom_number, 
phone_number,
graduation_year)
VALUES (
'Mark',
'Watney',
'5',
/*
Then insert a teacher names Jonas Salk (teacher_id = 1) who as a homeroom number of 5 and is from the Biology department.
His contact info is: jsalk@school.org and a phone number of 777-555-4321.
*/

INSERT INTO teachers (
first_name,
last_name,
homeroom_number, 
department,
email,
phone)
VALUES (
'Jonas',
'Salk',
'5',
'Biology',
'jsalk@school.org',
'775-555-4321'
)