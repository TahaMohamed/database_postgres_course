-- JOINS
-- Aliasing
-- Kinds of JOINs
-- INNER JOINs
-- OUTER JOINs
-- FULL JOINs
-- UNIONS
-- ...and more

-- Aliasing with AS clause.
-- SELECT column AS new_name FROM table;
-- SELECT SUM(column) AS new_name FROM table;

SELECT amount AS rental_price
FROM payment;

SELECT SUM(amount) AS net_revenue
FROM payment;

-- NOTE: The AS clause excuted at the very END of a query, Meaning that we can't use
-- the ALIAS inside a WHERE clause

SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id;

-- ERROR QUERY - using aliasing in filtering -
SELECT customer_id, staff_id AS staff, SUM(amount) AS total_spent
FROM payment
WHERE staff = 2 --OOPS
GROUP BY customer_id, staff --Here you can use alias name
HAVING total_spent > 100 --OOPS;

