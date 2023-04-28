-- GROUP BY
-- How data is distributed per category.
-- => Aggregate functions
-- => Theory
-- => Implementation
-- => Having - Filltering with a GROUP BY
-- => Challenges 

-- Aggregate Functions
-- Main idea is to take MULTIPLE inputs and return a SINGLE output.
-- Most common aggr func.
-- # AVG() - returns average(mean) value. 
-- # COUNT() - returns number of values.
-- # MAX() - returns maximum value. 
-- # MIN() - returns minimum value. 
-- # SUM() - returns the sum of all values. 

-- NOTES: 
-- Aggr func calls happen only in the SELECT clause or the HAVING clause.
-- AVG func returns a floating point value (e.g. 2.343564...) Use ROUND().

SELECT MIN(replacement_cost)
FROM film;

SELECT MAX(replacement_cost)
FROM film;

-- Can't use column name with aggregate method becuase it return a single value 
-- but column may be return multiple, if needed we should use GROUP BY.

SELECT MAX(replacement_cost), MIN(replacement_cost)
FROM film;

SELECT MAX(replacement_cost), MIN(replacement_cost), COUNT(*)
FROM film;

SELECT AVG(replacement_cost)
FROM film;

SELECT ROUND(AVG(replacement_cost))
FROM film;

SELECT ROUND(AVG(replacement_cost),2) 
FROM film;

SELECT SUM(replacement_cost)
FROM film;

