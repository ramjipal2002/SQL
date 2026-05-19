/* Write your T-SQL query statement below */
select eu.unique_id as unique_id , e.name as Name 
from employees as  e 
left join employeeuni as eu on 
eu.id = e.id