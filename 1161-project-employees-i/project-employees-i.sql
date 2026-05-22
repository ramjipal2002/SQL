/* Write your T-SQL query statement below */
Select p.project_id , round(avg(e.experience_years*1.0),2) as average_years
from project as p 
join employee as  e on  p.employee_id = e.employee_id
group by project_id