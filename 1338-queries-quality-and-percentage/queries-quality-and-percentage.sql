/* Write your T-SQL query statement below */
SELECT query_name ,
ROUND(AVG(RATING*1.0/POSITION) ,2) as quality,
round(avg(case when rating < 3 then 100.0 else 0 end),2) as poor_query_percentage
from queries
group by query_name