-- user create query
-- root username and register username
select aue.* from app_user au
inner join app_user_env aue ON aue.app_user_id = au.id
where au.status != 2 and au.username = 'super_admin93'

select au.id as new_user_id
from app_user au
where au.status != 2 and au.id = 109 

select au.id as root_user_id
from app_user au
where au.status != 2 and au.username = 'super_admin93'

INSERT INTO public.app_user_env
(id, date_created, date_updated, status, env_value, created_by_id, updated_by_id, app_user_id, env_key_id)
VALUES(nextval('app_user_env_id_seq'::regclass), '', '', 0, '', 0, 0, 0, 0);





SELECT * FROM (
    SELECT '1' AS "ORDER", 'DAILY' AS NAME, COUNT(1) AS TOTALCOUNT, 
           COALESCE(SUM(CASE WHEN RT.STATUS = 1 THEN 1 ELSE 0 END), 0) AS ACTIVECOUNT, 
           COALESCE(SUM(CASE WHEN RT.STATUS = 2 THEN 1 ELSE 0 END), 0) AS OFFCOUNT
    FROM REFRESH_TOKEN RT
    WHERE CAST(DATE_CREATED AS DATE) = CURRENT_DATE
    UNION
    SELECT '2' AS "ORDER", 'WEEK' AS NAME, COUNT(1) AS TOTALCOUNT, 
           COALESCE(SUM(CASE WHEN RT.STATUS = 1 THEN 1 ELSE 0 END), 0) AS ACTIVECOUNT, 
           COALESCE(SUM(CASE WHEN RT.STATUS = 2 THEN 1 ELSE 0 END), 0) AS OFFCOUNT
    FROM REFRESH_TOKEN RT
    WHERE DATE_CREATED >= DATE_TRUNC('WEEK', CURRENT_DATE) 
      AND DATE_CREATED < DATE_TRUNC('WEEK', CURRENT_DATE) + INTERVAL '1 WEEK'
    UNION
    SELECT '3' AS "ORDER", 'MONTH' AS NAME, COUNT(1) AS TOTALCOUNT, 
           COALESCE(SUM(CASE WHEN RT.STATUS = 1 THEN 1 ELSE 0 END), 0) AS ACTIVECOUNT, 
           COALESCE(SUM(CASE WHEN RT.STATUS = 2 THEN 1 ELSE 0 END), 0) AS OFFCOUNT
    FROM REFRESH_TOKEN RT
    WHERE DATE_CREATED >= DATE_TRUNC('MONTH', CURRENT_DATE) 
      AND DATE_CREATED < DATE_TRUNC('MONTH', CURRENT_DATE) + INTERVAL '1 MONTH'
    UNION
    SELECT '4' AS "ORDER", 'YEAR' AS NAME, COUNT(1) AS TOTALCOUNT, 
           COALESCE(SUM(CASE WHEN RT.STATUS = 1 THEN 1 ELSE 0 END), 0) AS ACTIVECOUNT, 
           COALESCE(SUM(CASE WHEN RT.STATUS = 2 THEN 1 ELSE 0 END), 0) AS OFFCOUNT
    FROM REFRESH_TOKEN RT
    WHERE DATE_CREATED >= CURRENT_DATE - INTERVAL '1 YEAR'
) TOKEN_DATA 
ORDER BY TOKEN_DATA."ORDER" ASC;



select
	distinct AU.ID,
	AU.EMAIL,
	AU.USERNAME,
	AU.FIRST_NAME || ' ' || AU.LAST_NAME as FULL_NAME,
	AU.IMG as PROFIlE_IMG,
	PRO.ID as PROFILE_ID,
	PRO.PROFILE_NAME,
	PRO.DESCRIPTION,
	AURA.DATE_CREATED as LINK_DATA,
	case
		when AURA.DATE_CREATED is null then false
		else true
	end LINKED,
	case
		when AURA.STATUS is not null then AURA.STATUS when AU.STATUS = 0 or RL.STATUS = 0 then 0 else 1
	end as LINK_STATUS
from
	APP_USER AU
inner join PROFILE PRO on PRO.ID = AU.PROFILE_ID
left join APP_USER_ROLE_ACCESS AURA on AURA.APP_USER_ID = AU.ID and AURA.ROLE_ID = 2
left join role RL on RL.ID = AURA.ROLE_ID
where
	AU.STATUS != 2 and PRO.PROFILE_NAME in ('ADMIN_PROFILE', 'SUPER_ADMIN_PROFILE')
order by
	AU.ID desc
