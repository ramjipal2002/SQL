/* Write your T-SQL query statement below */
select P.product_name , s.Year , s.price 
from sales as s
join Product as p on p.product_id = s.product_id 