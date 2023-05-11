-- Assessment #3

-- #1

CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(50) NOT NULL, 
	last_name VARCHAR(50) NOT NULL,
	homeroom_number INTEGER NULL, 
	department VARCHAR(50) NOT NULL, 
	email VARCHAR(100) NOT NULL UNIQUE, 
	phone VARCHAR(50) NOT NULL UNIQUE
);

SELECT date_part('year', CURRENT_DATE);

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(50) NOT NULL, 
	last_name VARCHAR(50) NOT NULL,
	homeroom_number INTEGER NULL, 
	department VARCHAR(50) NOT NULL, 
	email VARCHAR(100) NOT NULL UNIQUE, 
	phone VARCHAR(50) NOT NULL UNIQUE,
	graduation_year SMALLINT CHECK(graduation_year > date_part('year',CURRENT_DATE))
);

ALTER TABLE students
ADD COLUMN teacher_id INTEGER REFERENCES teachers(teacher_id);

ALTER TABLE students
DROP COLUMN department;

ALTER TABLE students
ALTER COLUMN email DROP NOT NULL;


INSERT INTO teachers (first_name, last_name, email, phone, homeroom_number, department)
VALUES
('Jonas', 'Salk', 'jsalk@school.org', '777-555-4321', 5, 'Biology');

SELECT * FROM teachers;

INSERT INTO students(first_name, last_name, phone, homeroom_number, teacher_id, graduation_year)
VALUES('Mark', 'Watney', '777-555-1234', 5, 1, '2035');

SELECT * FROM students;