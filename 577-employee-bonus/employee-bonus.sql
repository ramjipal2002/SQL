/* Write your T-SQL query statement below */
select e.name as Name, b.bonus as bonus
from employee as e 
left join Bonus as b on e.empId = b. empId
where b.bonus < 1000 or b.bonus is null