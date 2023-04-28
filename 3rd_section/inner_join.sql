-- INNER JOIN
-- Mean which values exists inside two tables

-- SELECT * FROM 
-- TableA INNER JOIN TableB
-- ON TableA.col_match = TableB.col_match

-- This is the same result of

-- SELECT * FROM 
-- TableB INNER JOIN TableA
-- ON TableA.col_match = TableB.col_match

-- The result will be all cols from A and all cols from B that matching (with duplicating cols)

-- To prevent duplicated you should select what cols need.

-- SELECT TableA.id, TableA.col1, TableB.col_match FROM 
-- TableB INNER JOIN TableA
-- ON TableA.col_match = TableB.col_match

-- NOTE: 
-- Table order won't matter in an INNER JOIN.
-- In postgres will treat JOIN keyword as an INNER JOIN.

SELECT *
FROM payment
INNER JOIN customer 
ON payment.customer_id = customer.customer_id;

SELECT payment.*
FROM payment
INNER JOIN customer 
ON payment.customer_id = customer.customer_id;

SELECT customer.*
FROM payment
INNER JOIN customer 
ON payment.customer_id = customer.customer_id;

SELECT first_name, last_name, amount, customer.customer_id, payment_id
FROM payment
INNER JOIN customer 
ON payment.customer_id = customer.customer_id;

SELECT first_name, last_name, amount, customer.customer_id, payment_id
FROM payment
JOIN customer 
ON payment.customer_id = customer.customer_id;

-- If name of column in two tables equivelant we can use USING clause
SELECT first_name, last_name, amount, customer.customer_id, payment_id
FROM payment
INNER JOIN customer 
USING(customer_id);