-- COALESCE
-- Return the first element not null

SELECT COALESCE(1,null,2);
-- 1

SELECT COALESCE(null,2, 1);
-- 2

-- #num - null return null

SELECT COALESCE(300 - null);

SELECT 300 - COALESCE(null,0);

-- CAST Operator (::) Or function (CAST())

-- Convert from data type to another

-- Function
SELECT CAST('5' AS INTEGER);

-- Operator
SELECT '5'::INTEGER;

-- Invalid Input
-- SELECT CAST('five' AS INTEGER);

-- SELECT CAST(date_col AS TIMESTAMP) FROM table;

SELECT CAST(inventory_id AS VARCHAR) FROM rental;

SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;


