select gs.id, gs.section_name, gs.description, gs.status,
glg.id as link_section_id,
case when glg.section_id is not null then 'true' else 'false' end as linked
from gen_section gs
left join gc_link_gs glg on glg.section_id = gs.id  and (gs.status != 2 and glg.status != 2)
where gs.created_by_id = 1
order by gs.date_created desc



SELECT GS.ID, GS.SECTION_NAME, GS.DESCRIPTION, GS.STATUS, GLG.control_order,
CASE WHEN GLG.SECTION_ID IS NOT NULL THEN 'true' ELSE 'false' END AS LINK_STATUS, 
GLG.ID AS LINK_SECTION_ID
FROM GEN_SECTION GS
LEFT JOIN GC_LINK_GS GLG ON GLG.SECTION_ID = GS.ID AND GLG.CONTROL_ID = 1 AND (GS.STATUS != 2 AND GLG.STATUS != 2)
WHERE GS.CREATED_BY_ID = 1 ORDER BY GS.DATE_CREATED desc


SELECT GC.ID, GC.field_type, GC.CONTROL_NAME,  GC.status, 
GLG.CONTROL_ORDER,
CASE WHEN GLG.SECTION_ID IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END AS LINK_STATUS, 
GLG.ID AS LINK__ID
FROM GEN_CONTROL GC
LEFT JOIN GC_LINK_GS GLG ON GLG.CONTROL_ID = GC.ID AND GLG.SECTION_ID = 25
 AND GC.STATUS != 2
WHERE GC.CREATED_BY_ID = 1 AND GC.STATUS != 2
ORDER BY GC.DATE_CREATED DESC



select gf.id, gf.form_name, gf.form_type, gf.status,
CASE WHEN GLG.form_id IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END AS LINK_STATUS, 
GLG.section_order, GLG.ID AS LINK_section_ID
from gen_form gf
left join gs_link_gf glg on glg.form_id = gf.id AND GLG.section_id = 27 AND (gf.STATUS != 2 AND GLG.STATUS != 2)
WHERE gf.CREATED_BY_ID = 1 ORDER BY gf.DATE_CREATED desc


select GS.ID, GS.SECTION_NAME, GS.DESCRIPTION, GS.STATUS,
CASE WHEN GLG.form_id IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END AS LINK_STATUS, 
GLG.section_order, GLG.ID AS LINK_section_ID
from gen_section gs
left join gs_link_gf glg on glg.section_id  = gs.id AND GLG.form_id = 18 AND (gs.STATUS != 2 AND GLG.STATUS != 2)
WHERE gs.CREATED_BY_ID = 1 ORDER BY gs.DATE_CREATED desc


SELECT GF.ID, GF.FORM_NAME, GF.FORM_TYPE, GF.STATUS, CASE WHEN GLG.FORM_ID IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END AS LINK_STATUS, 
GLG.SECTION_ORDER, GLG.ID AS LINK_FORM_ID
FROM GEN_FORM GF
LEFT JOIN GS_LINK_GF GLG ON GLG.FORM_ID = GF.ID AND GLG.SECTION_ID = 26 AND GLG.STATUS != 2
WHERE   AND GF.STATUS != 2 GF.CREATED_BY_ID = 1
ORDER BY GF.DATE_CREATED DESC



SELECT GS.ID, GS.SECTION_NAME, GS.DESCRIPTION, GS.STATUS, GLG.CONTROL_ORDER, CASE WHEN GLG.SECTION_ID IS NOT NULL THEN 'true' ELSE 'false' END AS LINK_STATUS, GLG.ID AS LINK_SECTION_ID FROM GEN_SECTION GS LEFT JOIN GC_LINK_GS GLG ON GLG.SECTION_ID = GS.ID AND GLG.CONTROL_ID = 33 AND (GS.STATUS != 2 AND GLG.STATUS != 2) WHERE GS.CREATED_BY_ID = 1 ORDER BY GS.DATE_CREATED DESC
