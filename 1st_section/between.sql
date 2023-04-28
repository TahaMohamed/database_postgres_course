-- BETWEEN
-- the same as value >= low AND value <= high
-- value BETWEEN low AND high

-- NOT BETWEEN
-- the same as value < low OR value > high
-- value NOT BETWEEN low AND high

-- When used with dates, You need to format dates in the ISO 8601 standard format,
-- which is YYYY-MM-DD
-- date BETWEEN '2007-01-01' AND '2007-02-01'

-- When using datetime BETWEEN starts at 0:00

SELECT * 
FROM payment 
WHERE amount BETWEEN 8 AND 10
LIMIT 2;

SELECT * 
FROM payment 
WHERE amount NOT BETWEEN 8 AND 10
LIMIT 2;

-- This will start at 2007-02-01 00:00:00.000000 and 
-- end at 2007-02-14 00:00:00.000000
-- 2007-02-14 not included (end at 2007-02-13)

SELECT * 
FROM payment 
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-14';

-- To include 2007-02-14 

SELECT * 
FROM payment 
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

-- OR

SELECT * 
FROM payment 
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-14 23:59:59.999999';

