# Write your MySQL query statement below
select s.user_id,
round(avg( if ( c.action = 'Confirmed' ,1 ,0 )),2)
as confirmation_rate
from Signups as s 
left join confirmations as c using (user_id)
group by s.user_Id