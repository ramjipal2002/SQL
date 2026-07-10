/* Write your T-SQL query statement below */
Select sell_date , count(*) as num_sold , string_agg(product,',') as products 
from (select distinct sell_date,product from activities )a
group by sell_date
order by Sell_date