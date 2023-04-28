-- HAVING
-- The HAVING clause allows us to filter after an aggregation has already taken place.

-- SELECT company, SUM(sales)
-- FROM finance_table
-- GROUP BY company;

-- We can filter before executing the GROUP BY.
-- SELECT company, SUM(sales)
-- FROM finance_table
-- WHERE company != 'company'
-- GROUP BY company;

-- If we want to filter based on SUM(sales).
-- SELECT company, SUM(sales)
-- FROM finance_table
-- GROUP BY company
-- HAVING SUM(sales) > 1000;

-- HAVING allows us to use the aggregate result as a filter along with a GROUP BY.

SELECT customer_id, SUM(amount) 
FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount) 
FROM payment
WHERE customer_id NOT IN (184, 87, 477)
GROUP BY customer_id;


SELECT customer_id, SUM(amount) 
FROM payment
WHERE customer_id NOT IN (184, 87, 477)
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT store_id, COUNT(*) 
FROM customer
GROUP BY store_id;

SELECT store_id, COUNT(*) 
FROM customer
GROUP BY store_id
HAVING COUNT(*) > 300;
