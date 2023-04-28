-- GROUP BY I (Theory)
-- SELECT category_col, AGGR(data_col) FROM table GROUP BY category_col.
-- SELECT category_col, AGGR(data_col) FROM table WHERE category_col != 'A' GROUP BY category_col.
-- The GROUP BY clause must appear right after FROM or WHERE statement.
-- In the SELECT statement, columns must either have an aggregate function or be in the GROUP BY call.

-- SELECT company, division, SUM(sales)
-- FROM finance_table
-- GROUP BY company, division

-- We can use WHERE statement only on columns not on results of aggregate function(HAVING statement).

-- SELECT company, division, SUM(sales)
-- FROM finance_table
-- WHERE division IN ('marketing', 'transport')
-- GROUP BY company, division

-- Using ORDER BY

-- SELECT company, division, SUM(sales)
-- FROM finance_table
-- WHERE division IN ('marketing', 'transport')
-- GROUP BY company, division
-- ORDER BY SUM(sales)
-- LIMIT 5

-- GROUP BY II (Implementation)

SELECT customer_id
FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;

SELECT customer_id, staff_id, SUM(amount)
FROM payment
GROUP BY customer_id, staff_id;

SELECT customer_id, staff_id, rental_id, SUM(amount)
FROM payment
GROUP BY customer_id, staff_id, rental_id;

SELECT customer_id, staff_id, rental_id, SUM(amount)
FROM payment
WHERE amount > 2
GROUP BY customer_id, staff_id, rental_id;

SELECT customer_id, staff_id, rental_id, SUM(amount)
FROM payment
WHERE amount > 2
GROUP BY customer_id, staff_id, rental_id
ORDER BY SUM(amount) DESC;

SELECT customer_id, staff_id, rental_id, SUM(amount)
FROM payment
WHERE amount > 2
GROUP BY customer_id, staff_id, rental_id
ORDER BY staff_id DESC;

SELECT customer_id, staff_id, rental_id, SUM(amount)
FROM payment
WHERE amount > 2
GROUP BY customer_id, staff_id, rental_id
ORDER BY customer_id,staff_id DESC;

SELECT customer_id, staff_id, rental_id, SUM(amount)
FROM payment
WHERE amount > 2
GROUP BY customer_id, staff_id, rental_id
ORDER BY staff_id, customer_id DESC;

SELECT customer_id, staff_id, rental_id, SUM(amount)
FROM payment
WHERE amount > 2
GROUP BY staff_id,customer_id, rental_id
ORDER BY staff_id, customer_id DESC;

SELECT customer_id, staff_id, rental_id, SUM(amount)
FROM payment
WHERE amount > 2
GROUP BY customer_id, staff_id, rental_id
ORDER BY SUM(amount) DESC
LIMIT 10;

SELECT DATE(payment_date)
FROM payment
GROUP BY DATE(payment_date);

SELECT DATE(payment_date), SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;

SELECT DATE(payment_date), SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY AVG(amount) DESC;


