-- IN
-- Check to see if a value is included in a list of multiple options
-- value IN (option1, option2, ..., option_n)
-- SELECT color FROM table WHERE color IN ('red', 'blue', 'green');

-- NOT IN
-- SELECT color FROM table WHERE color NOT IN ('red', 'blue');

SELECT * 
FROM payment
WHERE amount IN (0.99, 1.89, 1.99)
ORDER BY amount;

SELECT * 
FROM payment
WHERE amount NOT IN (0.99, 1.89, 1.99)
ORDER BY amount;

SELECT *
FROM customer
WHERE first_name IN ('John', 'Jake', 'Julie');