/* Write your T-SQL query statement below */
select top 1   person_name 
from (Select *,sum (weight) over (order by turn ) as a  from queue ) a
where a <= 1000
order by turn desc

