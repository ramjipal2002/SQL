/* Write your T-SQL query statement below */
select ROUND((COUNT(CASE WHEN order_date = customer_pref_delivery_date THEN 1 END) * 100) / CAST(COUNT(*) AS DECIMAL(10, 2)), 2) AS immediate_percentage
from (
    select customer_id, min(order_date) as order_date, min(customer_pref_delivery_date) as customer_pref_delivery_date
    from delivery
    group by customer_id
) a