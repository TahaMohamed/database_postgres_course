-- LIKE & ILIKE (Using Pattern Matching)
-- Use of wildcard characters:
-- Percent %:
-- 		=> Matches any sequance of characters.
-- Underscore _:
-- 		=> Matches any single character.

-- Percent %:
-- All names that begin with an 'A'
-- WHERE name LIKE 'A%';
-- All names that end with an 'a'
-- WHERE name LIKE '%a';

-- NOTE: LIKE is CASE-SENSITIVE, We can use ILIKE which is CASE-INSENSITIVE.

-- Underscore _:
-- All Mission Impossible films. (Mission Impossible 1, Mission Impossible 2, Mission Impossible 3)
-- WHERE title LIKE 'Mission Impossible _';
-- We can use multiple underscores
-- 'Version #A4', 'Version #B2', ..., etc
-- WHERE value LIKE 'Version #__';

-- Combination (% and _):
-- WHERE name LIKE '_her%';
-- Cheryl => C her yl
-- Theresa => T her esa
-- Sherri => S her ri

SELECT *
FROM customer
WHERE first_name LIKE 'J%';

SELECT *
FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT *
FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';

SELECT *
FROM customer
WHERE first_name LIKE '%her%';

SELECT *
FROM customer
WHERE first_name LIKE '_her%';

SELECT *
FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name
LIMIT 10;

-- NOT LIKE

SELECT *
FROM customer
WHERE first_name NOT LIKE '_her%';
