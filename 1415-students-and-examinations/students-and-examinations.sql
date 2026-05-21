/* Write your T-SQL query statement below */
Select S.student_id , S.student_name , Su.subject_name, count(e.Student_id)as attended_exams
from students as s
cross join Subjects as su 
left join examinations as e 
on s.student_id = e.student_id
and su.subject_name = e.subject_name
group by s.student_id,s.student_name ,su.subject_name 
order by s.student_id,s.student_name ,su.subject_name ;