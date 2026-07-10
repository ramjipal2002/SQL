/* Write your T-SQL query statement below */
select P.Product_name ,sum(O.unit) as unit  
from products as p
join orders as o on P.Product_id = O.Product_id 
where o.order_date like '2020-02%'
group by p.product_id,
p.product_name 
having sum(o.unit) >= 100