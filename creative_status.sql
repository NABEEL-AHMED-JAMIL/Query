select id, external_id, adx_audit, app_audit, created_at, status, created_by_id
from creatives
where created_by_id = 1117 and (external_id is not null and status <> 6);

select id, external_id, adx_audit, app_audit, created_at, status, created_by_id
from creatives where external_id in(
'155393199','155393201','155393244','155393247','155393270','155393614','155393796','155393798',
'155394115','155394118','155394142','155394143','155394146','155394168','155394552','155394554',
'155394599','155394603','155394606','155394616','155394621','155394684','155394685','155394686',
'155394694','155394696','155394697','155395090','155395091','155395094','155395121','155395163',
'155395226','155395279','155395614','155395687','155395739','155396241','155396372','155396609',
'155393199','155393201','155393244','155393247','155393270','155393614','155393796','155393798',
'155394115','155394118','155394142','155394143','155394146','155394168','155394552','155394554',
'155394599','155394603','155394606','155394616','155394621','155394684','155394685','155394686',
'155394694','155394696','155394697','155395090','155395091','155395094','155395121','155395163',
'155395226','155395279','155395614','155395687','155395739','155396241','155396372','155396609',
'176488455','176488490','176488501','176488514','176488525','176488463','176492231','176492223',
'176492226','176492240','176492234','176492243','176492246','176509661','176509060','176509068',
'176509071','176509671','176509685','176509079','176509699','176509692','176509718','176509105',
'176509708','176509086','176509092','176616369','176616373','176616378','176616381','176616388',
'176616392','176616395','176617321','176617334','176617343','176617348','176617352','176617357',
'176617359','176618211','176619026','176619030','176619035','176620251','176620259','176618194',
'176618200','176618203','176618206','176618210','176619037','176618190','176619049','176620263',
'176620269','176620829','176620831','176622883','176622889','176624552','176622893','176622896',
'176622897','176622902','176622910','176624544','176619039','176619045','176620824','176624557',
'176624562','176625203','176625210','176625213','176625214','176624571','176624577','176624588',
'176625218','176625221','176625227','176644732','176644734','176644739','176644742','176644744',
'176644748','176644751');

select id, external_id from app_user where status=1 and (external_id <> 0 and external_id is not null);

select id, created_at from creatives where created_at BETWEEN '2019-04-07 00:03:04' AND '2019-07-17 15:10:05';

select external_id from creatives where created_by_id=1117 and (external_id is not null and status <> 6) and (created_at BETWEEN '2019-07-18 15:10:05' AND '2019-08-24 07:56:13');

select external_id from creatives where advertiser_id in(select id from app_user where external_id = 3207741) and external_id is not null and (adx_audit is null or app_audit is null);

select id, external_id, adx_audit, app_audit, status, advertiser_id, agency_advertiser_id from creatives
where advertiser_id in(select advertiser_id from agency_advertiser where external_id = 3777680) and external_id is not null and (adx_audit is null or app_audit is null);

select * from creatives where advertiser_id in(select id from app_user where external_id = 3760151) and external_id is not null and (adx_audit is null or app_audit is null and status <> 6)
union
select external_id from creatives where advertiser_id in(select advertiser_id from agency_advertiser where external_id = 3760151) and external_id is not null and (adx_audit is null or app_audit is null and status <> 6);

select distinct s.external_id as external_id, s.status as status, cast(bd.geo_path_id as varchar) as geo_path_id from segment s
inner join billboard_details bd on bd.id = s.detail_id and geo_path_id=30449641
union
select distinct s.external_id as external_id, s.status as status, p.unique_id as geo_path_id from segment s
inner join poi p on s.detail_id = p.id;

select external_id from creatives where advertiser_id in(select id from app_user where external_id = 3462997) and external_id is not null And (adx_audit is null or app_audit is null and status <> 6)
union
select external_id from creatives where advertiser_id in(select advertiser_id from agency_advertiser where external_id = 3777680) and external_id is not null and (adx_audit is null or app_audit is null and status <> 6);

select external_id from creatives where advertiser_id in (select id from app_user where external_id = 3727417) and external_id is not null And (adx_audit is null or app_audit is null and status <> 6) 
union
select external_id from creatives where advertiser_id in (select advertiser_id from agency_advertiser where external_id = 3727417) and external_id is not null and (adx_audit is null or app_audit is null and status <> 6);

select * from creatives where external_id in(
176488455, 176488490, 176488501, 176488514, 176488525, 176488463, 176492231, 176492223, 176492226, 176492240, 176492234, 176492243, 176492246, 176509661,
176509060, 176509068, 176509071, 176509671, 176509685, 176509079, 176509699, 176509692, 176509718, 176509105, 176509708, 176509086, 176509092, 176616369,
176616373, 176616378, 176616381, 176616388, 176616392, 176616395, 176617321, 176617334, 176617343, 176617348, 176617352, 176617357, 176617359, 176618211,
176619026, 176619030, 176619035, 176620251, 176620259, 176618194, 176618200, 176618203, 176618206, 176618210, 176619037, 176618190, 176619049, 176620263,
176620269, 176620829, 176620831, 176622883, 176622889, 176624552, 176622893, 176622896, 176622897, 176622902, 176622910, 176624544, 176619039, 176619045,
176620824, 176624557, 176624562, 176625203, 176625210, 176625213, 176625214, 176624571, 176624577, 176624588, 176625218, 176625221, 176625227, 176644732,
176644734, 176644739, 176644742, 176644744, 176644748, 176644751);


select * from creatives where advertiser_id = 1117 and (external_id is not null and status <> 6)
and(created_at between '2019-08-28 06:00:00' and '2019-08-29 06:00:00') and (adx_audit is null or app_audit is null);

update creatives set status = 6 where id in(
6168,6165,6169,6164,6166,6167,6062,6063,6202,6203,6204,6201,6239,6240,6241,6246,6247,6255,6254,6253,6262,6259,6256,6257,6260,6261,6258,6180,6181,6195,6234,
6235,6236,6237,6238,6250,6251,6252,6249,6243,6244,6242,6248,6245,6270,6271,6273,6274,6275,6276,6277,6278,6279,6280,6281,6282,6283,6285,6284,5973,6287,6288,
6292,6296,6300,6301,6305,6308,6306,6040,6309,6043,6310,6311,6313,6312,6316,6315,6318,6317,6286,6289,6290,6291,6293,6294,6295,6297,6298,6299,6302,6303,6304,
6307,6314,6170,6178,6183,6173,5994,5995,6174,6179,6184,6189,6194,6199,6185,6186,6187,6190,6191,6188,6193,6198,6208,6211,6216,6224,6218,6220,6221,6222,6182,
6197,6205,6206,6215,6219,5996,6025,6223,6227,6228,6230,6269,6024,6030,6026,6027,6028,6031,6171,6176,6196,6210,6172,6175,6177,6192,6200,6209,6217,6225,6226,
6229,6231,6233,6272,5940,6041,6053,6014,6029,6207,6232,5947,6042,6022,5993,5975,5976,5989,5990,5991,5992);

select line_item.id as lineItemId, line_item.name as lineItemName, campaign.id as campaignId, campaign.name as campaignName, line_item.status
from line_item
inner join campaign on line_item.campaign_id = campaign.id and line_item.status = 1;

select external_id from creatives where advertiser_id in(select id from app_user where external_id = 1136) and external_id is not null And (adx_audit is null or app_audit is null and status <> 6)
union
select external_id from creatives where advertiser_id in(select advertiser_id from agency_advertiser where external_id = 1136) and external_id is not null and (adx_audit is null or app_audit is null and status <> 6);

select id, name, external_id, is_self_audited, app_audit, adx_audit, modified_at
from creatives where advertiser_id = 1136 and is_self_audited = true;

update poi set geo_json =(
select geo_json from poi where id in(select detail_id from segment where created_by_id = 1012 and name in(select name from segment where id in (3072))))
where id in(select detail_id from segment where created_by_id = 1141 and name in (select name from segment where id in (3072)));

select id, name from segment where id in(select segment_id from segment_lineitem where lineitem_id in(select id from line_item where created_by_id = 1012 and group_id= 1133)) and status not in (6);

select seg.id, seg.name, et.name from line_item li
inner join advertiser_group adg on adg.id = li.group_id
inner join segment_lineitem sl on sl.lineitem_id = li.id
inner join segment seg on seg.id = sl.segment_id
inner join entity_type et on et.id = seg.type_id
where adg.name ='Amusement' and li.status not in(6);

select external_id, is_self_audited from creatives
where advertiser_id in(select id from app_user where external_id = 3618236) and (external_id is not null and status <> 6) and (modified_at between '2019-09-06 08:07:48' and '2019-09-04 08:07:48')
union
select external_id from creatives
where advertiser_id in(select advertiser_id from agency_advertiser where external_id = 3618236) and (external_id is not null and status <> 6) and (modified_at between '2019-09-06 08:07:48' and '2019-09-04 08:07:48');


SELECT ts AS Date,
SUM(IF(ping_bucket = 'A_1', pings_from_device_per_day, 0)) AS 'A_1',
SUM(IF(ping_bucket = 'B_2-5', pings_from_device_per_day, 0)) AS 'B_2-5',
SUM(IF(ping_bucket = 'C_6-10', pings_from_device_per_day, 0 )) AS 'C_6-10',
SUM(IF(ping_bucket = 'D_11-30', pings_from_device_per_day, 0)) AS 'D_11-30',
SUM(IF(ping_bucket = 'E_31-60', pings_from_device_per_day, 0)) AS 'E_31-60',
SUM(IF(ping_bucket = 'F_61-100', pings_from_device_per_day, 0)) AS 'F_61-100',
SUM(IF(ping_bucket = 'G_101-500', pings_from_device_per_day, 0)) AS 'G_101-500',
SUM(IF(ping_bucket = 'H_501+', pings_from_device_per_day, 0)) AS 'H_501+'
FROM reports2
WHERE ts between '2019-03-18' and '2019-04-24' and source LIKE '%mobileWalla%' GROUP BY ts;

select * from segment where created_by_id = 1134 and external_id in(18937083,18937359,18941525,19044416,18938736);

select distinct external_id, expiry_days from fetch_sgment_ids_view_v2 where status=1 and external_id = 18937359;

select * from poi where id in (2637,2821,2628,2642,2647);

select * from app_user where comp_name = 'Diversatile';

select distinct li.type_id, li.advertiser_id, li.custom_audience_id from poi as p
inner join segment seg on seg.detail_id = p.id
inner join segment_lineitem sl on sl.segment_id = seg.id
inner join line_item li on sl.lineitem_id=li.id
where p.unique_id= unique_id;

select * from billboard_details order by id desc limit 10 where id = 2637;

select distinct li.type_id, li.advertiser_id,li.custom_audience_id from billboard_details bill
inner join segment seg on seg.detail_id = bill.id " + "
inner join segment_lineitem sl on sl.segment_id = seg.id " + "
inner join line_item li on sl.lineitem_id=li.id " + "
where bill.geo_path_id= unique_id;

SELECT ts AS 'Date',
SUM(IF(ping_bucket = 'A_1', pings_from_device_per_day, 0)) AS 'A_1',
SUM(IF(ping_bucket = 'B_2-5', pings_from_device_per_day, 0)) AS 'B_2-5',
SUM(IF(ping_bucket = 'C_6-10', pings_from_device_per_day, 0)) AS 'C_6-10',
SUM(IF(ping_bucket = 'D_11-30', pings_from_device_per_day, 0)) AS 'D_11-30',
SUM(IF(ping_bucket = 'E_31-60', pings_from_device_per_day, 0)) AS 'E_31-60',
SUM(IF(ping_bucket = 'F_61-100', pings_from_device_per_day, 0)) AS 'F_61-100',
SUM(IF(ping_bucket = 'G_101-500', pings_from_device_per_day, 0)) AS 'G_101-500',
SUM(IF(ping_bucket = 'H_501+', pings_from_device_per_day, 0)) AS 'H_501+'
FROM reports2 WHERE ts between '2019-03-18' and '2019-04-24' and source LIKE 'mobileWalla' GROUP BY ts;

SELECT ts AS 'Date',
SUM(IF(ping_bucket = 'A_1', pings_from_device_per_day, 0)) AS 'A_1',
SUM(IF(ping_bucket = 'B_2-5', pings_from_device_per_day, 0)) AS 'B_2-5',
SUM(IF(ping_bucket = 'C_6-10', pings_from_device_per_day, 0)) AS 'C_6-10',
SUM(IF(ping_bucket = 'D_11-30', pings_from_device_per_day, 0)) AS 'D_11-30',
SUM(IF(ping_bucket = 'E_31-60', pings_from_device_per_day, 0)) AS 'E_31-60',
SUM(IF(ping_bucket = 'F_61-100', pings_from_device_per_day, 0)) AS 'F_61-100',
SUM(IF(ping_bucket = 'G_101-500', pings_from_device_per_day, 0)) AS 'G_101-500',
SUM(IF(ping_bucket = 'H_501+', pings_from_device_per_day, 0)) AS 'H_501+'
FROM reports2 WHERE ts between ''2019-03-18'' and ''2019-04-24'' and source LIKE 'mobileWalla' GROUP BY ts;

SELECT month,
SUM(IF(ping_bucket = 'A_1', u_maid, 0)) AS 'A_1',
SUM(IF(ping_bucket = 'B_2-5', u_maid, 0)) AS 'B_2-5',
SUM(IF(ping_bucket = 'C_6-10', u_maid, 0)) AS 'C_6-10',
SUM(IF(ping_bucket = 'D_11-30', u_maid, 0)) AS 'D_11-30',
SUM(IF(ping_bucket = 'E_31-60', u_maid, 0)) AS 'E_31-60',
SUM(IF(ping_bucket = 'F_61-100', u_maid, 0)) AS 'F_61-100',
SUM(IF(ping_bucket = 'G_101-500', u_maid, 0)) AS 'G_101-500',
SUM(IF(ping_bucket = 'H_501+', u_maid, 0)) AS 'H_501+'
FROM reports4 WHERE month between '03/19' and '04/19' and source LIKE 'mobileWalla' GROUP BY month;

SELECT month as 'Date',
SUM(IF(ping_bucket = 'A_1', u_maid, 0)) AS 'A_1',
SUM(IF(ping_bucket = 'B_2-5', u_maid, 0)) AS 'B_2-5',
SUM(IF(ping_bucket = 'C_6-10', u_maid, 0)) AS 'C_6-10',
SUM(IF(ping_bucket = 'D_11-30', u_maid, 0)) AS 'D_11-30',
SUM(IF(ping_bucket = 'E_31-60', u_maid, 0)) AS 'E_31-60',
SUM(IF(ping_bucket = 'F_61-100', u_maid, 0)) AS 'F_61-100',
SUM(IF(ping_bucket = 'G_101-500', u_maid, 0)) AS 'G_101-500',
SUM(IF(ping_bucket = 'H_501+', u_maid, 0)) AS 'H_501+'  FROM
reports5 WHERE month between '03/19' and '04/19' and source LIKE 'mobileWalla' GROUP BY month;


select month as 'Date' from reports5 where month between '03/19' and '04/19';
select * from reports5 where month between '03/19' and '04/19';
select * from appnexus_log order by id desc limit 80;
select * from poi order by id desc limit 80;
select sum(if(ModeOfPayment = 'Offline', Amount, 0)) as TotalAmount from SumWithIfCondition;

select * from reports2;
select * from reports2 group by ping_bucket;
select count(ping_bucket), ping_bucket from reports2 group by ping_bucket;
select * from appnexus_log order by id desc limit 5;

select seg.name, seg.detail_id, seg.type_id, seg.external_id, billboard_details.geo_path_id
from segment as seg
inner join billboard_details on billboard_details.id = seg.detail_id and seg.type_id in(3)
and seg.external_id in(17747470,18830848,18947478,18724771,18947478,18893249,19024090,19044116,18937423,18777165,18893084);

select distinct li.type_id, li.advertiser_id, li.custom_audience_id
from poi as p
inner join segment seg on seg.detail_id = p.id
inner join segment_lineitem sl on sl.segment_id = seg.id
inner join line_item li on sl.lineitem_id=li.id where p.unique_id= 'P-944DT87IDD';

select id, name, detail_id, type_id, external_id
from segment where external_id in(17747470,18830848,18947478,18724771,18947478,18893249,19024090,19044116,18937423,18777165,18893084);

select id, start_date as startdate, end_date as enddate, start_time as starttime , end_time as endtime,
(CASE
     WHEN CAST(start_date as date) > current_date And CAST(end_Date as date) > current_date THEN '0'
     WHEN CAST(start_date as date) <= current_date And CAST(end_Date as date) >= current_date THEN '1'
     WHEN CAST(start_date as date) < current_date And CAST(end_Date as date) < current_date THEN '9'
     ELSE null
END) as status
from segment_schedule where id = (select fn_segment_schedule_dates(?));

select * from (
select seg.unique_id, count(seg.unique_id) as countGeoPath
from segment seg
where type_id=3 and status !=6
group by seg.unique_id) x where x.countGeoPath =2;

SELECT ts AS Date,
SUM(IF(ping_bucket = 'A_1', total_pings, 0)) AS 'A_1',
SUM(IF(ping_bucket = 'B_2-5', total_pings, 0)) AS 'B_2-5',
SUM(IF(ping_bucket = 'C_6-10', total_pings, 0)) AS 'C_6-10',
SUM(IF(ping_bucket = 'D_11-30', total_pings, 0)) AS 'D_11-30',
SUM(IF(ping_bucket = 'E_31-60', total_pings, 0)) AS 'E_31-60',
SUM(IF(ping_bucket = 'F_61-100', total_pings, 0)) AS 'F_61-100',
SUM(IF(ping_bucket = 'G_101-500', total_pings, 0)) AS 'G_101-500',
SUM(IF(ping_bucket = 'H_501+', total_pings, 0)) AS 'H_501+'
FROM r2_test
WHERE ts between '2019-08-26' and '2019-09-06' and data_source LIKE '%mogeanSep%' and polygon Like '%NJ/NY%'
GROUP BY ts;

select distinct li.type_id, li.advertiser_id, li.custom_audience_id
from poi as p
inner join poi_segment ps on p.id = ps.poi_id
inner join segment seg on seg.detail_id = p.id and seg.type_id !=3
inner join segment_lineitem sl on sl.segment_id = seg.id
inner join line_item li on sl.lineitem_id=li.id
where ps.unique_id= 'P-1ESPYQYN3B';

select distinct li.type_id, li.advertiser_id,li.custom_audience_id
from segment seg
inner join segment_lineitem sl on sl.segment_id = seg.id
inner join line_item li on sl.lineitem_id=li.id
where seg.unique_id= 'S-084M7O7OM1';

select distinct li.type_id, li.advertiser_id, li.custom_audience_id
from poi as p
inner join segment seg on seg.detail_id = p.id
inner join segment_lineitem sl on sl.segment_id = seg.id
inner join line_item li on sl.lineitem_id=li.id
where p.unique_id= 'P-1ESPYQYN3B';

select region.id as regionId, region.name as regionName, city.id as cityId, city.name as cityName
from app_nexus_region as region
inner join app_nexus_city as city on region.name = city.region_name;

select count(region.id) as regionId
from app_nexus_region as region
inner join app_nexus_city as city on region.name = city.region_name;

select id, geo_path_id, modified_at, modified_by_id
from billboard_details
where id in(select detail_id from segment where advertiser_id = '1137' and front_polygon is not null and back_polygon is not null and length(front_polygon) > 100 and length(back_polygon) > 100;

select country.id as countryId, region.country_name as countryName, region.country_code as countryCode, region.id as regionId, region.name as regionName, (select count(*) from app_nexus_region where country_code = 'US') as count
from app_nexus_region as region
inner join app_nexus_country as country on region.country_code = country.code;

select region_code, region_name
from app_nexus_city group by region_code, region_name;

select id, name, code, (select count(id) from quorum_app_nexus_country) as count
from quorum_app_nexus_country;

select id,name,country_code,country_name,region_code,region_name,(select count(id) from app_nexus_city) as count from app_nexus_city;

select id, name, country_code, country_name, region_code, region_name, (select count(id) from app_nexus_city) as count from app_nexus_city;

select country.id as countryId, country.code as countryCode, country.name as countryName, region.id as regionId, region.name as regionName,
(select count(id) from quorum_app_nexus_region) as count
from quorum_app_nexus_region as region
inner join quorum_app_nexus_country as country on country.id = region.country_id;

select id, name, code, (select count(id) from quorum_app_nexus_country) as count
from quorum_app_nexus_country;

select country.id as countryId, country.code as countryCode, country.name as countryName, region.id as regionId, region.name as regionName,
(select count(id) from quorum_app_nexus_region) as count
from quorum_app_nexus_region as region
inner join quorum_app_nexus_country as country on country.id = region.country_id;

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName, region.code as regionCode,region.name as regionName,
(select count(id) from quorum_app_nexus_city) as count
from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id;

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName, country.id as countryId, region.code as regionCode,region.name as regionName,
(select count(id) from quorum_app_nexus_city where name like '%hig%') as count
from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id
where city.name like '%hig%';

select * from billboard_details where name like '%New test with Adams Outdoor%';

select external_id,unique_id,expiry_days
FROM segment s where advertiser_id = (select id from app_user where email='ianbosin@mailinator.com') and status = 1;

SELECT DISTINCT s.external_id, s.expiry_days, s.status, s.unique_id AS geo_path_id FROM segment s;

select distinct s.external_id as external_id, s.status as status, cast(bd.geo_path_id as varchar) as geo_path_id
from segment s
inner join billboard_details bd on bd.id = s.detail_id
union
select distinct s.external_id as external_id, s.status as status, p.unique_id as geo_path_id from segment s
inner join poi p on s.detail_id = p.id;

select unique_id from segment where advertiser_id = 1123 and status <> 6
union
select unique_id from poi_segment where poi_id in(select id from poi where  advertiser_id = 1123 and status <> 6) and status <> 6;

select city.id as cityId, city.name as cityName, country.code as countryCode, country.name as countryName, country.id as countryId, region.code as regionCode, region.name as regionName,
(select count(id) from quorum_app_nexus_city where region_id= 3950) as count
from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id
where city.region_id = 3950;

select city.id as cityId, city.name as cityName, country.code as countryCode, country.name as countryName, country.id as countryId, region.code as regionCode, region.name as regionName, (select count(id) from quorum_app_nexus_city) as count
from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id limit ?;

select distinct s.external_id as external_id, s.status as status, cast(bd.geo_path_id as varchar) as geo_path_id from segment s
inner join billboard_details bd on bd.id = s.detail_id
union
select distinct s.external_id as external_id, s.status as status, p.unique_id as geo_path_id from segment s
inner join poi p on s.detail_id = p.id;

select unique_id from segment where advertiser_id = 1123 and status <> 6
union
select unique_id from poi_segment where poi_id in (select id from poi where  advertiser_id = 1123 and status <> 6) and status <> 6;

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName,country.id as countryId, region.code as regionCode,region.name as regionName,
(select count(id) from quorum_app_nexus_city where region_id= 3950) as count
from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id
where city.region_id = 3950;

select city.id as cityId, city.name as cityName, country.code as countryCode,
country.name as countryName, country.id as countryId, region.code as regionCode,
region.name as regionName, (select count(id) from quorum_app_nexus_city) as count
from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id limit ?;
