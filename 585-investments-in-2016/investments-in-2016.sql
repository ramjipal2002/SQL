
/* Write your T-SQL query statement below */
select
round(sum(tiv_2016*1.0), 2) as tiv_2016
from Insurance
where tiv_2015 in 
    (
    select tiv_2015
    from Insurance
    group by tiv_2015
    having count(tiv_2015) > 1
    )
and lat * 100 + lon in 
    (  
    select lat * 100 + lon as latlon
    from Insurance 
    group by lat, lon
    having count(lat * 100 + lon) < 2 
    );