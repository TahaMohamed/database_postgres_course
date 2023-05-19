CREATE TABLE depts(
	dept_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(50) NOT NULL,
	name VARCHAR(50) NOT NULL 
);

INSERT INTO depts(customer_name, name)
VALUES
('Vinton', 'A'),
('Luren', 'A'),
('Claire', 'B');

SELECT * FROM depts;

SELECT (
	SUM(CASE WHEN name = 'A' THEN 1 ELSE 0 END)/
	SUM(CASE WHEN name = 'B' THEN 1 ELSE 0 END)
) AS department_ratio
FROM depts;

DELETE FROM depts WHERE name = 'B';

-- Exception division by zero
SELECT (
	SUM(CASE WHEN name = 'A' THEN 1 ELSE 0 END)/
	SUM(CASE WHEN name = 'B' THEN 1 ELSE 0 END)
) AS department_ratio
FROM depts;

-- Use NULLIF
-- Return NULL if condition is true

SELECT (
	SUM(CASE WHEN name = 'A' THEN 1 ELSE 0 END)/
	NULLIF(SUM(CASE WHEN name = 'B' THEN 1 ELSE 0 END), 0)
) AS department_ratio
FROM depts;
