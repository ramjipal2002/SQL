/* Write your T-SQL query statement below */
Select Results
from(
select top 1 name as results
from MovieRating AS m inner join users AS u 
on u.user_id = m.user_id
group by  u.user_id,name 
order by count(*) desc ,[name] asc) a 
union all
select Results
from (
select top 1 title as results
from MovieRating AS mr inner join movies AS m 
on m.movie_id = mr.movie_id
where month(created_at) = 2 and year(created_at)= 2020 
group by m.movie_id ,title
order by avg(rating*1.00) desc ,title asc
) b


