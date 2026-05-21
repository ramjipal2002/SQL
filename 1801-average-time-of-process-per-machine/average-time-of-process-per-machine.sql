/* Write your T-SQL query statement below */
Select a.machine_id, Round(avg(b.timestamp - a.timestamp), 3) as processing_time
from activity as A
inner join activity as b 
on a.machine_id = b.machine_id 
and a.process_id = b.process_id
and b.activity_type = 'end'
and a.activity_type = 'start'
Group by a.machine_id