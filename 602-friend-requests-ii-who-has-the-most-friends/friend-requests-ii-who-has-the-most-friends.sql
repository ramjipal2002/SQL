/* Write your T-SQL query statement below */
with friendcount as  
(select requester_id as id from RequestAccepted
union all 
select accepter_id as id from RequestAccepted) 
select top 1 id, count(id) as num from friendcount
group by id 
order by count(*)desc