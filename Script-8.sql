select d."year", count(*) 
from dimention d
group by d."year"


select distinct d.sub, d.year, count(*) as total
from dimention d
where "year" in (2023, 2024)
group by d.sub, d.year
