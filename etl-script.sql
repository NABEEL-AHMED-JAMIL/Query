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


SELECT GS.ID, GS.SECTION_NAME, GS.DESCRIPTION, GS.STATUS, GLG.CONTROL_ORDER, CASE WHEN GLG.SECTION_ID IS NOT NULL THEN 'true' ELSE 'false' END AS LINK_STATUS, GLG.ID AS LINK_SECTION_ID 
 FROM GEN_SECTION GS LEFT JOIN GC_LINK_GS GLG ON GLG.SECTION_ID = GS.ID AND GLG.CONTROL_ID = 33 AND (GS.STATUS != 2 AND GLG.STATUS != 2) WHERE GS.CREATED_BY_ID = 1 ORDER BY GS.DATE_CREATED DESC


select distinct AU.ID, AU.EMAIL, AU.USERNAME, AU.FIRST_NAME || ' ' || AU.LAST_NAME as FULL_NAME,
AU.IMG as PROFIlE_IMG, PRO.ID as PROFILE_ID, PRO.PROFILE_NAME, AURA.DATE_CREATED as LINK_DATA,
case
	when AURA.DATE_CREATED is null then false
	else true
end LINKED,
case
	when AURA.STATUS is not null then AURA.STATUS
	when AU.STATUS = 0
	or RL.STATUS = 0 then 0
	else 1
end as LINK_STATUS
from APP_USER AU
inner join PROFILE PRO on PRO.ID = AU.PROFILE_ID
left join APP_USER_ROLE_ACCESS AURA on AURA.APP_USER_ID = AU.ID and AURA.ROLE_ID = 2
left join role RL on RL.ID = AURA.ROLE_ID
where AU.status != 2 and (AU.ID = 1 or AU.CREATED_BY_ID = 1)
order by AU.ID desc


SELECT GS.ID, GS.SECTION_NAME, GS.DESCRIPTION, GS.STATUS,
CASE WHEN GLG.section_id IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END AS LINK_STATUS,
GLG.SECTION_ORDER, GLG.ID AS LINK_SECTION_ID
FROM GEN_SECTION GS
LEFT JOIN GS_LINK_GF GLG ON GLG.SECTION_ID = GS.ID AND GLG.FORM_ID = %d AND GLG.STATUS != %d
WHERE GS.STATUS != %d AND GS.CREATED_BY_ID = %d
ORDER BY GS.DATE_CREATED DESC


SELECT GS.ID, GS.SECTION_NAME, GS.DESCRIPTION, GS.STATUS,
CASE WHEN GLG.section_id IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END AS LINK_STATUS,
GLG.SECTION_ORDER, GLG.ID AS LINK_SECTION_ID
FROM GEN_SECTION GS
LEFT JOIN GS_LINK_GF GLG ON GLG.SECTION_ID = GS.ID AND GLG. = %d AND GLG.STATUS != %d
WHERE GS.STATUS != %d AND GS.CREATED_BY_ID = %d
ORDER BY GS.DATE_CREATED DESC


SELECT STT.ID, STT.SERVICE_NAME, STT.TASK_TYPE, 
CASE WHEN SLS.FORM_ID IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END AS LINK_STATUS, SLS.ID AS LINK_STT_ID 
FROM SOURCE_TASK_TYPE STT
INNER JOIN STTF_LINK_STT SLS ON SLS.STT_ID = STT.ID AND SLS.FORM_ID = 25  AND SLS.STATUS != 2
WHERE STT.STATUS != 2 AND STT.CREATED_BY_ID = 1 ORDER BY STT.DATE_CREATED DESC

select * from app_user_role_access aura
inner join app_user au on au.id = aura.id 


select distinct au.id, au.email, au.first_name || ' ' || au.last_name as full_name,
au.img as profie_img, aupa.date_created as link_data,
case when aupa.date_created is null then true else false end linked
from app_user au
left join app_user_profile_access aupa on aupa.app_user = au.id
left join profile pro on pro.id = aupa.profile
where pro.id is null or pro.id = 143;


select distinct au.id, au.email, au.first_name || ' ' || au.last_name as full_name,
au.img as profie_img, aura.date_created as link_data,
case when aura.date_created is null then true else false end linked
from app_user au
left join app_user_role_access aura on aura.app_user = au.id
left join "role" role on role.id = aura."role"
where role.id is null or role.id = 1;


// if role is delete from db then delete the role from 'app_user_role_access aura'
// if profile is delete from db then delete the profile from 'app_user_profile_access aupa'

select pro.id, as profile_id  pro.profile_name  from app_user au
inner join profile pro on pro.id = au.profile_id

select
	distinct AU.ID,
	AU.EMAIL,
	AU.FIRST_NAME || ' ' || AU.LAST_NAME as FULL_NAME,
	AU.IMG as PROFIlE_IMG,
	AUPA.DATE_CREATED as LINK_DATA,
	case
		when AUPA.DATE_CREATED is null then false
		else true
	end LINKED,
	
from APP_USER AU
left join APP_USER_PROFILE_ACCESS AUPA on AUPA.APP_USER_ID = AU.ID and AUPA.PROFILE_ID = 143
where
	AU.ID = 1 or AU.CREATED_BY_ID = 1
order by AU.ID asc


select
	distinct AU.ID,
	AU.EMAIL,
	AU.FIRST_NAME || ' ' || AU.LAST_NAME as FULL_NAME,
	AU.IMG as PROFIlE_IMG,
--	PRO.ID as PROFILE_ID,
--	PRO.PROFILE_NAME,
	AURA.DATE_CREATED as LINK_DATA,
	case
		when AURA.DATE_CREATED is null then false
		else true
	end LINKED
from
	APP_USER AU
--inner join PROFILE PRO on PRO.ID = AU.PROFILE_ID
left join APP_USER_ROLE_ACCESS AURA on
	AURA.APP_USER_ID = AU.ID
	and AURA.ROLE_ID = 8
where
	AU.ID = 1 or AU.CREATED_BY_ID = 1
order by
	AU.ID asc
	

SELECT DISTINCT AU.ID, AU.EMAIL, AU.FIRST_NAME || ' ' || AU.LAST_NAME AS FULL_NAME,
AU.IMG AS PROFILE_IMG, AUE.DATE_CREATED AS LINK_DATA,
CASE
	WHEN AUE.DATE_CREATED IS NULL THEN FALSE
	ELSE TRUE
END LINKED,
AUE.ENV_VALUE
FROM APP_USER AU 
LEFT JOIN APP_USER_ENV AUE ON AUE.APP_USER_ID = AU.ID AND AUE.ENV_KEY_ID = 1
WHERE AU.STATUS != 2
ORDER by AU.ID asc


select * from app_user au where au.id in (select sau.child_id from app_user au
inner join sub_app_user sau on sau.parent_id = au.id and sau.status != 2)


select distinct role."name"
from "role" role
inner join app_user_role_access aura on aura.role_id = role.id and aura.app_user_id = 1
and aura.status = 1 and role.status = 1


select distinct pro.id, pro.profile_name 
from profile pro
inner join app_user_profile_access aupa on aupa.profile_id = pro.id and aupa.app_user_id = 1
and pro.status = 1 and aupa.status = 1


select
	distinct AU.ID,
	AU.EMAIL,
	AU.USERNAME,
	AU.FIRST_NAME || ' ' || AU.LAST_NAME as FULL_NAME,
	AU.IMG as PROFILE_IMG,
	PRO.ID as PROFILE_ID,
	PRO.PROFILE_NAME,
	AUE.DATE_CREATED as LINK_DATA,
	case
		when AUE.DATE_CREATED is null then false
		else true
	end LINKED,
	case
		when AUE.STATUS is not null then AUE.STATUS
		when AU.STATUS  = 0 or PRO.STATUS = 0 then 0
		else 1
	end as LINK_STATUS,
	AUE.ENV_VALUE
from APP_USER AU
inner join PROFILE PRO on PRO.ID = AU.PROFILE_ID
left join APP_USER_ENV AUE on AUE.APP_USER_ID = AU.ID and AUE.ENV_KEY_ID = 25
where AU.STATUS != 2
order by AU.ID asc


select
	distinct AU.ID,
	AU.EMAIL,
	AU.USERNAME,
	AU.FIRST_NAME || ' ' || AU.LAST_NAME as FULL_NAME,
	AU.IMG as PROFIlE_IMG,
	PRO.ID as PROFILE_ID,
	PRO.PROFILE_NAME,
	AURA.DATE_CREATED as LINK_DATA,
	case
		when AURA.DATE_CREATED is null then false
		else true
	end LINKED,
	
CASE WHEN AURA.STATUS IS NOT NULL THEN AURA.STATUS WHEN AU.STATUS  = 0 OR RL.STATUS = 0 THEN 0 ELSE 1 END AS LINK_STATUS
	
from APP_USER AU
inner join PROFILE PRO on PRO.ID = AU.PROFILE_ID
left join APP_USER_ROLE_ACCESS AURA on AURA.APP_USER_ID = AU.ID and AURA.ROLE_ID = 8
left join role rl on rl.id = aura.role_id
where AU.ID = 1 or AU.CREATED_BY_ID = 1
order by AU.ID asc

select
	distinct AU.ID,
	AU.EMAIL,
	AU.USERNAME,
	AU.FIRST_NAME || ' ' || AU.LAST_NAME as FULL_NAME,
	AU.IMG as PROFIlE_IMG,
	PRO.ID as PROFILE_ID,
	PRO.PROFILE_NAME,
	AUPA.DATE_CREATED as LINK_DATA,
	case
		when AUPA.DATE_CREATED is null then false
		else true
	end LINKED,
	CASE WHEN AUPA.STATUS IS NOT NULL THEN AUPA.STATUS WHEN AU.STATUS  = 0 OR PRO.STATUS = 0 THEN 0 ELSE 1 END AS LINK_STATUS
from APP_USER AU
inner join PROFILE PRO on PRO.ID = AU.PROFILE_ID
left join APP_USER_PROFILE_ACCESS AUPA on AUPA.APP_USER_ID = AU.ID and AUPA.PROFILE_ID = 3
where AU.ID = 1 or AU.CREATED_BY_ID = 1
order by AU.ID asc


select notificati0_.id as id1_17_, notificati0_.created_by_id as created_9_17_, notificati0_.date_created as date_cre2_17_, 
	notificati0_.date_updated as date_upd3_17_, notificati0_.status as status4_17_, notificati0_.updated_by_id as updated10_17_, notificati0_.expire_time as
	expire_t5_17_, notificati0_.message as message6_17_, notificati0_.message_state as message_7_17_, notificati0_.notify_type as notify_t8_17_, 
	notificati0_.send_to as send_to11_17_ from notification_audit notificati0_ where notificati0_.status=? and notificati0_.send_to=? and (notificati0_.expire_time between ? and ?)
	order by notificati0_.id asc limit 200

