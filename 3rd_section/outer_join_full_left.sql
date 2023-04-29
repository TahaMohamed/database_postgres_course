-- OUTER JOIN
-- FULL OUTER JOIN
-- Clarifying WHERE null
-- LEFT OUTER JOIN
-- Clarifying WHERE null
-- RIGHT OUTER JOIN
-- Clarifying WHERE null  

-- SELECT * FROM TableA
-- FULL OUTER JOIN TableB
-- ON TableA.col_match = TableB.col_match

-- FULL OUTER JOIN with WHERE.
-- Get rows unique to either table (rows not found in both table).
-- Get all data which found in two tables or matches(Matches data like INNER JOIN)

-- SELECT * FROM TableA
-- FULL OUTER JOIN TableB
-- ON TableA.col_match = TableB.col_match
-- WHERE TableA.id IS null OR TableB.id IS null;

SELECT * FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id; 

SELECT * FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null; 
-- The result will be No records because every customer has transactions

-- LEFT OUTER JOIN

-- SELECT * FROM TableA
-- LEFT OUTER JOIN TableB
-- ON TableA.col_match = TableB.col_match

-- Short

-- SELECT * FROM TableA
-- LEFT JOIN TableB
-- ON TableA.col_match = TableB.col_match

-- NOTE: Order Of joining table is matter for LEFT OUTER JOIN


-- LEFT OUTER JOIN with WHERE.
-- Get rows found in TableA and NOT found in TableB.

-- SELECT * FROM TableA
-- LEFT OUTER JOIN TableB
-- ON TableA.col_match = TableB.col_match
-- WHERE TableB.id IS null

SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory
ON film.film_id = inventory.film_id;

SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON film.film_id = inventory.film_id;

-- To get only data found in left table.

SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON film.film_id = inventory.film_id
WHERE inventory.film_id IS NULL;

