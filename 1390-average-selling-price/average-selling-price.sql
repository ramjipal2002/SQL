/* Write your T-SQL query statement below */
select p.product_id , 
round(coalesce(sum(p.price * us.units) * 1.0 / Nullif (sum(us.units),0),0),2) as average_price 
from Prices as p 
left join unitsSold as us on p.product_id = us.Product_id
and us.purchase_date between p.start_date and p.end_date
group by p.product_id