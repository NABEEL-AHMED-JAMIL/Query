select ld.status, count(*), 'Lookup' as type
from lookup_data ld
where ld.parent_lookup_id is null and ld.created_by_id = %d
group by ld.status
union 
select ev.status, count(*), 'E-Variable' as type
from env_variables ev
group by ev.status
union 
select 
case WHEN tr.status = 0 THEN 'Inactive' WHEN tr.status = 1 THEN 'Active' WHEN tr.status = 2 THEN 'Delete'end,
count(*), 'Template' as type
from template_reg tr
group by tr.status


------------
select rol.status, count(*), 'Role' as type
from "role" rol
group by rol.status
union 
select pro.status, count(*), 'Profile' as type
from profile pro
group by pro.status
union
select per.status, count(*), 'Permission' as type
from "permission" per
group by per.status
------------
select au.status, count(*), 'User' as type
from app_user au 
group by au.status
-------------

select gf.status, count(*), 'Form' as type
from gen_form gf
group by gf.status
union 
select gc.status, count(*), 'Control' as type
from gen_control gc
group by gc.status
union 
select gs.status, count(*), 'Section' as type
from gen_section gs
group by gs.status

-----------
select crd.status, count(*), 'Credential' as type
from credential crd
group by crd.status
---------
select ld.lookup_type, count(*), 'STT' as type
from source_task_type stt
inner join lookup_data ld on ld.lookup_code = stt.status and ld.parent_lookup_id = (select id from lookup_data ld where ld.lookup_type = 'APPLICATION_STATUS' limit 1)
group by ld.lookup_type

---------
select * from lookup_data ld where ld.parent_lookup_id 

select st.status, count(*), 'ST' as type
from source_task st
inner join lookup_data ld on ld.lookup_code = st.status and ld.lookup_type = 'APPLICATION_STATUS'
group by st.status
\
\



SELECT LD1.LOOKUP_TYPE, COUNT(*), 'LOOKUP' AS TYPE FROM LOOKUP_DATA LD
INNER JOIN LOOKUP_DATA LD1 ON LD1.LOOKUP_CODE = LD.STATUS AND LD1.PARENT_LOOKUP_ID = (SELECT ID FROM LOOKUP_DATA LD WHERE LD.LOOKUP_TYPE = 'APPLICATION_STATUS' LIMIT 1)
WHERE LD.PARENT_LOOKUP_ID IS NULL 
GROUP BY LD1.LOOKUP_TYPE