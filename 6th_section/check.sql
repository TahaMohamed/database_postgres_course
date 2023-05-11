-- CHECK

-- CREATE TABLE example(
-- ex_id SERIAL PRIMARY KEY,
-- age SMALLINT CHECK (age > 21),
-- parent_age SMALLINT CHECK ( parent_age > age)
-- );

CREATE TABLE employees(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1990-01-01'),
	hier_date DATE CHECK (hier_date > birthdate),
	salary DECIMAL CHECK (salary > 0)
);

INSERT INTO employees (first_name, last_name, birthdate, hier_date, salary)
VALUES
('Taha', 'Mohamed', '1899-03-03', '2010-01-01', 100.34);

INSERT INTO employees (first_name, last_name, birthdate, hier_date, salary)
VALUES
('Taha', 'Mohamed', '1994-01-28', '2010-01-01', 100.34);

INSERT INTO employees (first_name, last_name, birthdate, hier_date, salary)
VALUES
('Taha', 'Mohamed', '1994-01-28', '2010-01-01', -100.34);

SELECT * FROM employees;
