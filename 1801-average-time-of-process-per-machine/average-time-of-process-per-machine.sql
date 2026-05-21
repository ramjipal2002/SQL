# Write your MySQL query statement below
select a.machine_id, round(avg(b.timestamp-a.timestamp),3) as processing_time
from activity a
 join activity b 
on a.machine_id = b.machine_id 
and a.process_id = b.Process_id
and b.activity_type = 'end'
and a.activity_type = 'start'
Group by machine_id