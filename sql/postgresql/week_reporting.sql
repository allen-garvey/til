/*
* Weekly report for the year of the count of some column for PostgreSQL
* Replace `date_added` with column name, `ratings` with table name
* and `2015` with the year you want the report for
*/
SELECT    extract(week FROM date_added) :: bigint AS week, count(*) 
FROM      ratings
WHERE     extract(YEAR FROM date_added) = '2016' 
GROUP BY  extract(week FROM date_added)
ORDER BY week