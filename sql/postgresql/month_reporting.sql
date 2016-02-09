/*
* Monthly report for the year of the count of some column for PostgreSQL
* Replace `date_added` with column name, `ratings` with table name
* and `2015` with the year you want the report for
*/
SELECT 
  SUM(CASE extract(MONTH FROM date_added) WHEN 1 THEN 1 ELSE 0 END) AS January,
  SUM(CASE extract(MONTH FROM date_added) WHEN 2 THEN 1 ELSE 0 END) AS February,
  SUM(CASE extract(MONTH FROM date_added) WHEN 3 THEN 1 ELSE 0 END) AS March,
  SUM(CASE extract(MONTH FROM date_added) WHEN 4 THEN 1 ELSE 0 END) AS April,
  SUM(CASE extract(MONTH FROM date_added) WHEN 5 THEN 1 ELSE 0 END) AS May,
  SUM(CASE extract(MONTH FROM date_added) WHEN 6 THEN 1 ELSE 0 END) AS June,
  SUM(CASE extract(MONTH FROM date_added) WHEN 7 THEN 1 ELSE 0 END) AS July,
  SUM(CASE extract(MONTH FROM date_added) WHEN 8 THEN 1 ELSE 0 END) AS August,
  SUM(CASE extract(MONTH FROM date_added) WHEN 9 THEN 1 ELSE 0 END) AS September,
  SUM(CASE extract(MONTH FROM date_added) WHEN 10 THEN 1 ELSE 0 END) AS October,
  SUM(CASE extract(MONTH FROM date_added) WHEN 11 THEN 1 ELSE 0 END) AS November,
  SUM(CASE extract(MONTH FROM date_added) WHEN 12 THEN 1 ELSE 0 END) AS December,
  SUM(CASE extract(YEAR FROM date_added) WHEN 2015 THEN 1 ELSE 0 END) AS TOTAL
FROM
    ratings
WHERE
  extract(YEAR FROM date_added) = 2015