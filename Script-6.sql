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
