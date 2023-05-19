-- VIEWS

-- Is a database object (stored query)
-- Accessed as virtual table.
-- Physically doesn't store data,
-- It simply stores the query (complex query)

-- SELECT c1,c2,....,cn 
-- FROM t1
-- INNER JOIN t2
-- ON t1.c1 = t2.c1

-- CREATE VIEW view_name AS SELECT c1,c2,....,cn 
-- FROM t1
-- INNER JOIN t2
-- ON t1.c1 = t2.c1

-- SELECT * FROM view_name;

SELECT first_name, last_name, address FROM customer 
INNER JOIN address
ON address.address_id = customer.address_id;

CREATE VIEW customer_info AS 
SELECT first_name, last_name, address FROM customer 
INNER JOIN address
ON address.address_id = customer.address_id;

SELECT * FROM customer_info;

-- ALTER VIEW

CREATE OR REPLACE VIEW customer_info AS 
SELECT first_name, last_name, address, district FROM customer 
INNER JOIN address
ON address.address_id = customer.address_id;

ALTER VIEW customer_info RENAME TO c_info;

SELECT * FROM c_info;

-- DROP

-- DROP VIEW [IF EXISTS] customer_info
DROP VIEW IF EXISTS c_info;

