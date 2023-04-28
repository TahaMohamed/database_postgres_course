-- HAVING Challenges

-- We are launching a platinum service for our most loyal customers.We will assign
-- platinum status to customers taht have had 40 or more transaction payments.
-- 
-- What customer IDs are eligible for platinum status?

SELECT * FROM payment;

SELECT customer_id, COUNT(*)
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40;

-- What are the customer IDs of customers who have spent more than $100
-- in payment transactions with our staff ID number 2?

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;
