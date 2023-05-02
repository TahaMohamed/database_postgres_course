-- String Functions & Operation
-- 

SELECT LENGTH(email), email FROM customer;

-- Concat
SELECT first_name || last_name FROM customer;

SELECT first_name || ' ' || last_name FROM customer;

SELECT first_name || ' ' || last_name AS full_name FROM customer;

SELECT UPPER(first_name) || ' ' || last_name AS full_name FROM customer;

-- SUBSTR
SELECT 
SUBSTRING(first_name FROM 1 FOR 1) || SUBSTRING(last_name FROM 1 FOR 1) || '@gmail.com'
FROM customer;


SELECT 
LOWER(SUBSTRING(first_name FROM 1 FOR 1) || SUBSTRING(last_name FROM 1 FOR 1)) || '@gmail.com'
FROM customer;

-- OR USING LEFT

SELECT 
LOWER(LEFT(first_name,1) || last_name) || '@gmail.com' AS customer_email
FROM customer;

