# Write your MySQL query statement below
select e.name 
from employee as e
join employee as m on e.id = m.managerId 
group by m.managerId
having count(e.id) >= 5