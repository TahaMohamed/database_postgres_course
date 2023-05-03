-- Self-Join
-- Self-joins are useful for comparing values in a column of rows within the same table.

-- when using a self join it is necessary to use an alias for the table, 
-- otherwise the table names would be ambiguous


-- SELECT tableA.col, tableB.col
-- FROM table AS tableA
-- JOIN table AS tableB ON
-- tableA.some_col = tableB.other_col

SELECT f1.title, f2.title, f2.length 
FROM film AS f1
INNER JOIN film AS f2
ON f1.film_id != f2.film_id
AND f1.length = f2.length;
