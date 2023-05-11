-- Conditional Exp & Operators

-- CASE
-- COALESCE
-- NULLIF
-- CAST
-- Views
-- Import and Export Functionality

-- CASE

-- We can use the CASE statement to only execute SQL code when certain conditions are met.
-- This is very similar to IF/ELSE statements in other programming languages.

-- General CASE Syntax (IF/ELSE)
-- CASE
-- 	WHEN condition1 THEN result1
--  WHEN condition2 THEN result2
--  ELSE some_other_result
-- END

-- CASE
-- 	WHEN condition1 THEN result1
--  WHEN condition2 THEN result2
--  ELSE some_other_result 
-- END AS alias_col

-- CASE Expression Syntax(SWITCH)
-- CASE expression
-- 	WHEN value1 THEN result1
--  WHEN value2 THEN result2
--  ELSE some_other_result
-- END


SELECT customer_id,
CASE 
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 AND 102) THEN 'Plus'
	ELSE 'Normal'
END
FROM customer;

SELECT customer_id,
CASE 
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 AND 102) THEN 'Plus'
	ELSE 'Normal'
END AS "Customer Class"
FROM customer;

SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS "Raffle Class"
FROM customer;

SELECT rental_rate,
CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END 
FROM film;

SELECT 
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS number_of_bargains
FROM film;

SELECT
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS bargains,
SUM(CASE rental_rate
	WHEN 2.99 THEN 1
	ELSE 0
END) AS regular,
SUM(CASE rental_rate
	WHEN 4.99 THEN 1
	ELSE 0
END) AS premium
FROM film;

