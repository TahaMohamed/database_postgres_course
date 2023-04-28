-- COUNT

-- SELECT COUNT(name) FORM table;

-- We wanted to know: How many unique 
-- names are there in the table.

-- **how many** COUNT(), **unique** DISTINCT
-- SELECT COUNT(DISTINCT(name)) FROM table;

SELECT * FROM payment;

SELECT COUNT(*) FROM payment;

SELECT COUNT(amount) FROM payment;

SELECT COUNT(DISTINCT amount) FROM payment;