# Write your MySQL query statement below
select 
case when id % 2 = 1 and 
id + 1 <= (select max(id)from seat)
THEN id + 1
WHEN id % 2 = 0 THEN id - 1
ELSE id END AS id,
student FROM Seat
ORDER BY id;