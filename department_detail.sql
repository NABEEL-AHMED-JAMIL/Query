---
select dd_x.department_name, count(*) from (
select distinct department_id, CASE
   WHEN department_name = 'Air Port SD' and enabled = '1' THEN 'SDC'
   WHEN department_name = 'Air Port SD' and enabled = '4' THEN 'SDD'
   ELSE department_name
END department_name 
from department_detail) as dd_x
group by dd_x.department_name;


select dd_x.enabled, dd_x.department_name, count(*)
from (select distinct * from department_detail) as dd_x
group by dd_x.enabled, dd_x.department_name;
