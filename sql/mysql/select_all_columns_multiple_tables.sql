-- This is not in the SQL standard, but in mySQL you can select all the
-- columns from multiple tables by prefixing the * with the table name
SELECT table1.*, table2.* FROM table1 INNER JOIN table2 ON table1.table2_id = table2.id;