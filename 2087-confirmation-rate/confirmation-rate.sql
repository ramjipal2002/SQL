/* Write your T-SQL query statement below */
select  s.user_id,
round (count(Case when c.action = 'confirmed' then 1 else null end )*1.0 /count(s.user_Id),2) as confirmation_rate
from signups as s 
left join confirmations as c on s.user_Id = c.user_Id
group by s.user_ID
