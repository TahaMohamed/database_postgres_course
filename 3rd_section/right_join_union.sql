-- RIGHT OUTER JOIN === RIGHT JOIN
-- This would be the same as switching the table order in a LEFT OUTER JOIN.

-- SELECT * FROM TableA
-- RIGHT OUTER JOIN TableB
-- ON TableA.col_match = TableB.col_match

-- The result will have INNER JOIN result between two tables to rid of it use WHERE clause.

-- SELECT * FROM TableA
-- RIGHT OUTER JOIN TableB
-- ON TableA.col_match = TableB.col_match
-- WHERE TableA.id IS null


-- UNIONS

-- Used to combine the result-set of two or more SELECT statements.

-- We can use it with calls and notifications tables   

-- SELECT column_name(s) FROM table1
-- UNION
-- SELECT column_name(s) FROM table2;


