/* Write your T-SQL query statement below */
select e.employee_id 
from employees as e
where salary < 30000 and 
manager_id not in (select employee_id from employees)
order by employee_id;