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



select notificati0_.id as id1_17_, notificati0_.created_by_id as created_9_17_, notificati0_.date_created as date_cre2_17_, notificati0_.date_updated as date_upd3_17_, notificati0_.status as status4_17_, notificati0_.updated_by_id as updated10_17_, notificati0_.expire_time as expire_t5_17_, notificati0_.message as message6_17_, notificati0_.message_state as message_7_17_, notificati0_.notify_type as notify_t8_17_, notificati0_.send_to as send_to11_17_ from notification_audit notificati0_ where notificati0_.status=? and notificati0_.send_to=? and (notificati0_.expire_time between ? and ?) order by notificati0_.id asc limit 200



select * from gen_form gf 
where gf.form_type = 1

GF.FORM_TYPE = 1


// 
select au.first_name, au.status, count(*) 
from app_user au 
group by au.first_name, au.status


SELECT GC.ID, GC.FIELD_TYPE, GC.CONTROL_NAME, GC.STATUS, 
GLG.CONTROL_ORDER, GLG.DISABLED_PATTERN, GLG.VISIBLE_PATTERN, GLG.FIELD_WIDTH, 
CASE WHEN GLG.SECTION_ID IS NOT NULL THEN 'TRUE' ELSE 'FALSE' END AS LINK_STATUS, 
GLG.ID AS LINK_CONTROL_ID FROM GEN_CONTROL GC LEFT JOIN GC_LINK_GS GLG ON GLG.CONTROL_ID = GC.ID AND GLG.SECTION_ID = 2 AND GC.STATUS != 2 
WHERE GC.STATUS != 2 AND GC.CREATED_BY_ID = 1
ORDER BY GLG.control_order DESC