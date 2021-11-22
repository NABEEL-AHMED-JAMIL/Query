--================1) All Product Report => Show (Name + Status + Image)=========
SELECT product_id, product_name,
CASE
    WHEN enabled = 'Y' THEN 'Enabled'
    WHEN enabled = 'N' THEN 'Disable'
END AS status, product_image_url
FROM product;
--================2) All Country Report => Show (Name + Status + Image) => Count Report (City, Wallet, Bank)=========
CREATE VIEW fetch_All_Global_Country_Detail_For_Report_Query AS
    SELECT country.country_name, country.country_code,
    CASE
        WHEN country.enabled = 'Y' THEN 'Enabled'
        WHEN country.enabled = 'N' THEN 'Disable'
    END AS status, country.country_image_url,
    COALESCE(city.total_city, 0) AS total_city,
    COALESCE(wallet.total_wallet, 0) AS total_wallet,
    COALESCE(bank.total_bank, 0) AS total_bank
    FROM country
    LEFT JOIN (SELECT country_code, COUNT(*) AS total_city FROM city GROUP BY country_code) city ON city.country_code = country.country_code
    LEFT JOIN (SELECT country_code, COUNT(*) AS total_wallet FROM wallet GROUP BY country_code) wallet ON wallet.country_code = country.country_code
    LEFT JOIN (SELECT country_code, COUNT(*) AS total_bank FROM bank GROUP BY country_code) bank ON bank.country_code = country.country_code
    ORDER BY country.country_name ASC;
SELECT * FROM fetch_All_Global_Country_Detail_For_Report_Query;
--- Query call only when count is more then '0' and display as table on report
-- fetch city table
SELECT city_id, city_name,
CASE
    WHEN enabled = 'Y' THEN 'Enabled'
    WHEN enabled = 'N' THEN 'Disable'
END AS status
FROM city WHERE country_code = 'PAK';
-- fetch wallet table
SELECT wallet_id, wallet_name,
CASE
    WHEN enabled = 'Y' THEN 'Enabled'
    WHEN enabled = 'N' THEN 'Disable'
END AS status
FROM wallet WHERE country_code = 'PAK';
-- fetch bank table
SELECT bank_id, bank_name,
CASE
    WHEN enabled = 'Y' THEN 'Enabled'
    WHEN enabled = 'N' THEN 'Disable'
END AS status
FROM bank WHERE country_code = 'PAK';
--================3) Single Country Report => Show (Name + Status + Image) => Count Report (City, Wallet, Bank) => Display List (City, Wallet, Bank)=========
SELECT * FROM fetch_All_Global_Country_Detail_For_Report_Query WHERE country_code = 'IND';
--- Query call only when count is more then '0' and display as table on report
-- fetch city table -> use old, fetch wallet table -> use old, fetch bank table -> use old
--================4) All Mto Partner Report => Show (Partner Detail) => Count Report (City, Wallet, Bank) => Display List (City, Wallet, Bank)=========
SELECT partner.partner_id, partner.partner_name, partner.transfer_speed, partner.partner_image_url FROM partner;
-- for mto partner fetch the country
CREATE VIEW fetch_Mto_Partner_Country_View AS
    SELECT partner.partner_id, partner.partner_name, country.country_name FROM partner
    INNER JOIN partner_country ON partner_country.partner_id = partner.partner_id
    INNER JOIN country ON country.country_code = partner_country.country_code;
-- for mto partner fetch the city
CREATE VIEW fetch_Mto_Partner_Country_City_View AS
    SELECT partner.partner_id, partner.partner_name, partner.partner_image_url,
    country.country_code, country.country_name, country.country_image_url,
    city.city_id, city.city_name,
    CASE
       WHEN city.enabled = 'Y' THEN 'Enabled'
       WHEN city.enabled = 'N' THEN 'Disable'
    END AS status
    FROM partner
    INNER JOIN partner_city ON partner_city.partner_id = partner.partner_id
    INNER JOIN city ON city.city_id = partner_city.city_id
    INNER JOIN country ON country.country_code = city.country_code;
-- for mto partner fetch the bank
CREATE VIEW fetch_Mto_Partner_Country_Bank_View AS
SELECT partner.partner_id, partner.partner_name, partner.partner_image_url,
country.country_code, country.country_name, country.country_image_url,
bank.bank_id, bank.bank_name, bank.bank_image_url,
CASE
    WHEN bank.enabled = 'Y' THEN 'Enabled'
    WHEN bank.enabled = 'N' THEN 'Disable'
END AS status
FROM partner
INNER JOIN partner_bank ON partner_bank.partner_id = partner.partner_id
INNER JOIN bank ON bank.bank_id = partner_bank.bank_id
INNER JOIN country ON country.country_code = bank.country_code;
-- for mto partner fetch the wallet
CREATE VIEW fetch_Mto_Partner_Country_Wallet_View AS
SELECT partner.partner_id, partner.partner_name, partner.partner_image_url,
country.country_code, country.country_name, country.country_image_url,
wallet.wallet_id, wallet.wallet_name, wallet.wallet_image_url,
CASE
    WHEN wallet.enabled = 'Y' THEN 'Enabled'
    WHEN wallet.enabled = 'N' THEN 'Disable'
END AS bank_enabled
FROM partner
INNER JOIN partner_wallet ON partner_wallet.partner_id = partner.partner_id
INNER JOIN wallet ON wallet.wallet_id = partner_wallet.wallet_id
INNER JOIN country ON country.country_code = wallet.country_code;
-- for profile-permission to check the permission
CREATE VIEW PROFILE_PERMISSIONS_VIEW AS
SELECT PROFILE_PERMISSION.PROFILE_PERMISSION_ID, PROFILE_PERMISSION.PROFILE_ID, PROFILE.PROFILE_NAME, PROFILE_PERMISSION.PERMISSION_ID, PERMISSION.PERMISSION_NAME
FROM PROFILE_PERMISSION
INNER JOIN PROFILE ON PROFILE.PROFILE_ID = PROFILE_PERMISSION.PROFILE_ID
INNER JOIN PERMISSION ON PERMISSION.PERMISSION_ID = PROFILE_PERMISSION.PERMISSION_ID;

select id, substring(cast(date_created as varchar), 1, 10) as date from master_source
where substring(cast(date_created as varchar), 1, 10) BETWEEN '2020-02-07'AND '2020-06-15'
order by date_created desc;

select id, external_id, adx_audit, app_audit, created_at, status, created_by_id
from creatives
where created_by_id = 1117 and (external_id is not null and status <> 6);

select  id, external_id, adx_audit, app_audit, created_at, status, created_by_id
from creatives 
where external_id in('155393199','155393201','155393244','155393247','155393270','155393614','155393796','155393798',
'155394115','155394118','155394142','155394143','155394146','155394168','155394552','155394554',
'155394599','155394603','155394606','155394616','155394621','155394684','155394685','155394686',
'155394694','155394696','155394697','155395090','155395091','155395094','155395121','155395163',
'155395226','155395279','155395614','155395687','155395739','155396241','155396372','155396609');

select id, external_id from app_user where status=1 and (external_id <> 0 and external_id is not null)
select * from campaign where name = '1212121';
select id,created_at from creatives where created_at BETWEEN '2019-04-07 00:03:04' AND '2019-07-17 15:10:05';
select external_id from creatives where created_by_id = 1117 and (external_id is not null and status <> 6)
and (created_at BETWEEN '2019-07-18 15:10:05' AND '2019-08-24 07:56:13');
select id, external_id from app_user where status=1 and (external_id <> 0 and external_id is not null);
select * creatives where external_id in(
'176488455', '176488490', '176488501', '176488514', '176488525', '176488463', '176492231', '176492223',
 '176492226', '176492240', '176492234', '176492243', '176492246', '176509661', '176509060', '176509068',
 '176509071', '176509671', '176509685', '176509079', '176509699', '176509692', '176509718', '176509105',
 '176509708', '176509086', '176509092', '176616369', '176616373', '176616378', '176616381', '176616388',
 '176616392', '176616395', '176617321', '176617334', '176617343', '176617348', '176617352', '176617357');
select  id, external_id, adx_audit, app_audit, created_at, status, created_by_id
from creatives where external_id in(
'155393199','155393201','155393244','155393247','155393270','155393614','155393796','155393798',
'155394115','155394118','155394142','155394143','155394146','155394168','155394552','155394554',
'155394599','155394603','155394606','155394616','155394621','155394684','155394685','155394686',
'155394694','155394696','155394697','155395090','155395091','155395094','155395121','155395163',
'155395226','155395279','155395614','155395687','155395739','155396241','155396372','155396609');
select * from creatives where id in (6416,6417,6418);
select * from creatives where id in (6416,6417,6418);
select * from creatives where advertiser_id = 1106 and created_by_id = 0;
select * from creatives where agency_advertiser_id = 1120;
select * from agency_advertiser where external_id = 3647234;
select * from creatives where external_id = '161974952';

select external_id from creatives
where advertiser_id = 1012 and (external_id is not null and status <> 6) 
and (created_at BETWEEN '2019-05-17 09:00:54' AND '2019-08-25 09:00:54');

select external_id from creatives
where advertiser_id in (select id from app_user where external_id = 3207741) 
and external_id is not null And (adx_audit is null or app_audit is null);

select id, external_id, adx_audit, app_audit, status, advertiser_id, agency_advertiser_id from creatives 
where advertiser_id in (select advertiser_id from agency_advertiser where external_id = 3777680) 
and external_id is not null And (adx_audit is null or app_audit is null);

update creatives set adx_audit = null where id = 6402;
select * from creatives where agency_advertiser_id in (select id from agency_advertiser where external_id = 3777680);
select * from agency_advertiser where external_id in(3760151,3760140,3647234);
select * from agency_advertiser where id in(1115);
select * from app_user where id in(1115);
select * from creatives where advertiser_id =1115;
select * from creatives order by id desc limit 1;

select * from creatives where advertiser_id in (select id from app_user where external_id = 3760151) and external_id is not null and (adx_audit is null or app_audit is null and status <> 6);
union
select external_id from creatives where advertiser_id in (select advertiser_id from agency_advertiser where external_id = 3760151) and external_id is not null and (adx_audit is null or app_audit is null and status <> 6);

select advertiser_id from agency_advertiser where external_id in (3777680,174578616,175392744);
select * from app_user where comp_name = 'Barco';
select external_id from creatives where id = 176487526;
select * from appnexus_log order by id desc limit 4;
select * from app_user where id = 1115;

select distinct s.external_id as external_id, s.status as status, cast(bd.geo_path_id as varchar) as geo_path_id
from segment s inner join billboard_details bd
on bd.id = s.detail_id and geo_path_id=30449641;
union
select distinct s.external_id as external_id, s.status as status, p.unique_id as geo_path_id
from segment s inner join poi p
on s.detail_id = p.id;

select * from agency_advertiser where status=1 and (external_id <> 0 and external_id is not null);
select id, external_id from app_user where status=1 and (external_id <> 0 and external_id is not null);
select * from agency_advertiser where comp_name = 'Barco';
select id, status, external_id from line_item;
select * from appnexus_log order by id desc limit 5;

select external_id from creatives where advertiser_id in 
(select id from app_user where external_id = 3462997) and external_id is not null And (adx_audit is null or app_audit is null and status <> 6);
union
select external_id from creatives where advertiser_id in
(select advertiser_id from agency_advertiser where external_id = 3777680) and external_id is not null and (adx_audit is null or app_audit is null and status <> 6);

select external_id from creatives where advertiser_id in (select id from app_user where external_id = 3727417) and external_id is not null And (adx_audit is null or app_audit is null and status <> 6)  union 
select external_id from creatives where advertiser_id in (select advertiser_id from agency_advertiser where external_id = 3727417) and external_id is not null and (adx_audit is null or app_audit is null and status <> 6)
	
INSERT INTO advertiser_facebook_info (id, created_at, created_by_id, status, modified_at,modified_by_id, access_token, ad_account_id, custom_account_id, permissions, report_status,token_expiry, advertiser_id, agency_advertiser_id, type_id) 
VALUES (0, '', 0, 0, '', 0, '', '', 0, '', '', '', 0, 0, 0);

where id in(3134,3121,3117,3083)
select id, external_id, status from campaign where id in(1792,1791);
select * from segment where name = 'ZIP-Segment'
select * from billboard_details where id = 1434 
select id, external_id, status from agency_advertiser where id = 1106
select * from fetch_sgment_ids_view_v2 where  geo_path_id = '30449641'
select * from app_user where email = 'adeelasghar2011@gmail.com' and status = 1

select * creatives where external_id in(176488455, 176488490, 176488501, 176488514, 176488525, 176488463, 176492231, 176492223, 176492226, 176492240, 176492234, 176492243, 176492246, 176509661, 
176509060, 176509068, 176509071, 176509671, 176509685, 176509079, 176509699, 176509692, 176509718, 176509105, 176509708, 176509086, 176509092, 176616369, 176616373, 176616378, 
176616381, 176616388, 176616392, 176616395, 176617321, 176617334, 176617343, 176617348, 176617352, 176617357, 176617359, 176618211, 176619026, 176619030, 176619035, 176620251, 
176620259, 176618194, 176618200, 176618203, 176618206, 176618210, 176619037, 176618190, 176619049, 176620263, 176620269, 176620829, 176620831, 176622883, 176622889, 176624552, 
176622893, 176622896, 176622897, 176622902, 176622910, 176624544, 176619039, 176619045, 176620824, 176624557, 176624562, 176625203, 176625210, 176625213, 176625214, 176624571, 
176624577, 176624588, 176625218, 176625221, 176625227, 176644732, 176644734, 176644739, 
176644742, 176644744, 176644748, 176644751);

select * from creatives order by id limit 1
select * from line_item
select * from creatives where advertiser_id = 1117 and (external_id is not null and status <> 6)
  and (created_at between '2019-08-28 06:00:00' and '2019-08-29 06:00:00') and (adx_audit is null or app_audit is null)

select * from app_user where id = 1117
select * from creatives where external_id in ('177333176')
select id,external_id, adx_audit, app_audit, from creatives
select id, external_id from line_item where id in(3089),3104,3044,3123)
select * from line_item where id in (3089,3044);
select * from lineitem_creative where lineitem_id in(3089,3044)

select * from creatives where id in (
6168,6165,6169,6164,6166,6167,6062,6063,6202,6203,6204,6201,6239,6240,6241,6246,6247,6255,6254,6253,6262,6259,6256,6257,6260,6261,6258,6180,6181,6195,6234,6235,6236,6237,6238,
6250,6251,6252,6249,6243,6244,6242,6248,6245,6270,6271,6273,6274,6275,6276,6277,6278,6279,6280,6281,6282,6283,6285,6284,5973,6287,6288,6292,6296,6300,6301,6305,
6308,6306,6040,6309,6043,6310,6311,6313,6312,6316,6315,6318,6317,6286,6289,6290,6291,6293,6294,6295,6297,6298,6299,6302,6303,6304,6307,6314,6170,6178,6183,6173,5994,
5995,6174,6179,6184,6189,6194,6199,6185,6186,6187,6190,6191,6188,6193,6198,6208,6211,6216,6224,6218,6220,6221,6222,6182,6197,6205,6206,6215,6219,
5996,6025,6223,6227,6228,6230,6269,6024,6030,6026,6027,6028,6031,6171,6176,6196,6210,6172,6175,6177,6192,6200,6209,6217,6225,6226,6229,6231,6233,6272,5940,6041,6053,6014,6029,6207,6232,5947,6042,6022,5993,5975,5976,5989,5990,5991,5992);

update creatives set status = 6 where id in (
6168,6165,6169,6164,6166,6167,6062,6063,6202,6203,6204,6201,6239,6240,6241,6246,6247,6255,6254,6253,6262,6259,6256,6257,6260,6261,6258,6180,6181,6195,6234,6235,6236,6237,6238,6250,6251,6252,6249,6243,6244,6242,6248,6245,6270,6271,6273,6274,6275,6276,6277,
6278,6279,6280,6281,6282,6283,6285,6284,5973,6287,6288,6292,6296,6300,6301,6305,6308,6306,6040,6309,6043,6310,6311,6313,6312,6316,6315,6318,6317,6286,6289,6290,6291,
6293,6294,6295,6297,6298,6299,6302,6303,6304,6307,6314,6170,6178,6183,6173,5994,5995,6174,6179,6184,6189,6194,6199,6185,6186,6187,6190,6191,6188,
6193,6198,6208,6211,6216,6224,6218,6220,6221,6222,6182,6197,6205,6206,6215,6219,5996,6025,6223,6227,6228,6230,6269,6024,6030,6026,6027,6028,6031,6171,6176,
6196,6210,6172,6175,6177,6192,6200,6209,6217,6225,6226,6229,6231,6233,6272,5940,6041,6053,6014,6029,6207,6232,5947,6042,6022,5993,5975,5976,5989,5990,5991,5992);

select external_id from creatives where (adx_audit is null or app_audit is null) and (external_id is not null);
select * from creatives where id = 6320;
select count(external_id) from creatives;

select * from appnexus_log order by id desc limit 20;
select * from appnexus_log order by id desc limit 2;

select line_item.id as lineItemId, line_item.name as lineItemName, campaign.id as campaignId, campaign.name as campaignName, line_item.status
from line_item inner join campaign
on line_item.campaign_id = campaign.id and line_item.status = 1;
  
select * from line_item where line_item.campaign_id = 1492f;
select * from creatives order by id desc limit 100;
 
INSERT INTO APP_NEXUS_DMA(id,country_id,country_name,dma_id,name) VALUES(1,233,'United States',566,'Harrisburg-Lancaster-Lebanon-York PA');
SELECT * FROM APP_NEXUS_DMA

//DELETE FROM APP_NEXUS_DMA;

select external_id from creatives where advertiser_id in (select id from app_user where external_id = 1136) and external_id is not null And (adx_audit is null or app_audit is null and status <> 6)
union
select external_id from creatives where advertiser_id in (select advertiser_id from agency_advertiser where external_id = 1136) and external_id is not null and (adx_audit is null or app_audit is null and status <> 6)

select id, external_id from app_user where status=1 and (external_id <> 0 and external_id is not null) and external_id = '3727417'

select * from creatives where app_audit = 'no_audit' order by id;

select id, name, external_id, is_self_audited, app_audit, adx_audit, modified_at from creatives where advertiser_id = 1136 and is_self_audited = true;

select * from app_user where comp_name like '%RPM%'

select * from poi where id = 2268
select * from poi where created_by_id = 1141;
select * from poi where id = 2788

update poi set geo_json = (select geo_json from poi where id in 
   (select detail_id from segment where created_by_id = 1012 and name in (select name from segment where id in (3072))))
    where id in 
    (select detail_id from segment where created_by_id = 1141 and name in (select name from segment where id in (3072)))


select * from segment where external_id = 18608737

select id, name from segment where id in(select segment_id from segment_lineitem 
where lineitem_id in (select id from line_item where created_by_id = 1012 and group_id= 1133)) and status not in (6)


select seg.id, seg.name, et.name from 
line_item li inner join advertiser_group adg on adg.id = li.group_id 
   inner join segment_lineitem sl on sl.lineitem_id = li.id
   inner join segment seg on seg.id = sl.segment_id
   inner join entity_type et on et.id = seg.type_id
where adg.name ='Amusement' and li.status not in(6);

{"creative":{"advertiser_id":3727417}}

select * from appnexus_log order by id desc limit 2;
select external_id, is_self_audited from creatives where advertiser_id in (select id from app_user where external_id = 3618236) and (external_id is not null and status <> 6) and (modified_at between '2019-09-06 08:07:48' and '2019-09-04 08:07:48') union select external_id from creatives where advertiser_id in (select advertiser_id from agency_advertiser where external_id = 3618236) and (external_id is not null and status <> 6) and (modified_at between '2019-09-06 08:07:48' and '2019-09-04 08:07:48');
select * from appnexus_log order by id desc limit 5;
select id , zip from poi where zip is not null and zip <> '';
select * from reports2 order by ts asc where ts = '2019-03-18';
select * from creatives order by id desc limit 10;

SELECT ts AS Date,
SUM(IF(ping_bucket = 'A_1', pings_from_device_per_day, 0)) AS A_1,
SUM(IF(ping_bucket = 'B_2-5', pings_from_device_per_day, 0)) AS 'B_2-5',
SUM( IF( ping_bucket = 'C_6-10', pings_from_device_per_day, 0 ) ) AS 'C_6-10',
SUM( IF( ping_bucket = 'D_11-30', pings_from_device_per_day, 0 ) ) AS 'D_11-30',
SUM( IF( ping_bucket = 'E_31-60', pings_from_device_per_day, 0 ) ) AS 'E_31-60',
SUM( IF( ping_bucket = 'F_61-100', pings_from_device_per_day, 0 ) ) AS 'F_61-100',
SUM( IF( ping_bucket = 'G_101-500', pings_from_device_per_day, 0 ) ) AS 'G_101-500',
SUM( IF( ping_bucket = 'H_501+', pings_from_device_per_day, 0 ) ) AS 'H_501+'
FROM reports2
WHERE ts between '2019-03-18' and '2019-04-24' and 
source LIKE '%mobileWalla%' GROUP BY ts

select * from Diversatile
select * from segment where created_by_id = 1134 and external_id in (18937083,18937359,18941525,19044416,18938736)
select distinct external_id, expiry_days from fetch_sgment_ids_view_v2 where status=1 and external_id = 18937359
select * from poi where id in (2637,2821,2628,2642,2647)
select * from agency_advertiser where id = 1129
select * from app_user where comp_name  = 'Diversatile'

select distinct li.type_id, li.advertiser_id, li.custom_audience_id from poi as p 
inner join segment seg on seg.detail_id = p.id
inner join segment_lineitem sl on sl.segment_id = seg.id
inner join line_item li on sl.lineitem_id=li.id
where p.unique_id= unique_id;

select * from billboard_details order by id desc limit 10 where id = 2637

select distinct li.type_id, li.advertiser_id,li.custom_audience_id from billboard_details bill 
inner join segment seg on seg.detail_id = bill.id " + "
inner join segment_lineitem sl on sl.segment_id = seg.id " + "
inner join line_item li on sl.lineitem_id=li.id " + "where bill.geo_path_id= unique_id;

SELECT ts AS 'Date', 
SUM( IF( ping_bucket = 'A_1', pings_from_device_per_day, 0 ) ) AS 'A_1',
SUM( IF( ping_bucket = 'B_2-5', pings_from_device_per_day, 0 ) ) AS 'B_2-5',
SUM( IF( ping_bucket = 'C_6-10', pings_from_device_per_day, 0 ) ) AS 'C_6-10',
SUM( IF( ping_bucket = 'D_11-30', pings_from_device_per_day, 0 ) ) AS 'D_11-30',
SUM(IF( ping_bucket = 'E_31-60', pings_from_device_per_day, 0 ) ) AS 'E_31-60',
SUM( IF( ping_bucket = 'F_61-100', pings_from_device_per_day, 0 ) ) AS 'F_61-100',
SUM( IF( ping_bucket = 'G_101-500', pings_from_device_per_day, 0 ) ) AS 'G_101-500',
SUM( IF( ping_bucket = 'H_501+', pings_from_device_per_day, 0 ) ) AS 'H_501+'  
FROM reports2 WHERE ts between '2019-03-18' and '2019-04-24' and source LIKE 'mobileWalla' GROUP BY ts

SELECT ts AS 'Date', 
SUM( IF( ping_bucket = 'A_1', pings_from_device_per_day, 0 ) ) AS 'A_1', 
SUM( IF( ping_bucket = 'B_2-5', pings_from_device_per_day, 0 ) ) AS 'B_2-5', 
SUM( IF( ping_bucket = 'C_6-10', pings_from_device_per_day, 0 ) ) AS 'C_6-10',  
SUM( IF( ping_bucket = 'D_11-30', pings_from_device_per_day, 0 ) ) AS 'D_11-30',   
SUM(IF( ping_bucket = 'E_31-60', pings_from_device_per_day, 0 ) ) AS 'E_31-60',  
SUM( IF( ping_bucket = 'F_61-100', pings_from_device_per_day, 0 ) ) AS 'F_61-100', 
SUM( IF( ping_bucket = 'G_101-500', pings_from_device_per_day, 0 ) ) AS 'G_101-500',   
SUM( IF( ping_bucket = 'H_501+', pings_from_device_per_day, 0 ) ) AS 'H_501+'  
FROM reports2 WHERE ts between ''2019-03-18'' and ''2019-04-24'' and source LIKE 'mobileWalla' GROUP BY ts

SELECT month,  
SUM( IF( ping_bucket = 'A_1', u_maid, 0 ) ) AS 'A_1',   
SUM( IF( ping_bucket = 'B_2-5', u_maid, 0 ) ) AS 'B_2-5', 
SUM( IF( ping_bucket = 'C_6-10', u_maid, 0 ) ) AS 'C_6-10',
SUM( IF( ping_bucket = 'D_11-30', u_maid, 0 ) ) AS 'D_11-30',
SUM( IF( ping_bucket = 'E_31-60', u_maid, 0 ) ) AS 'E_31-60', 
SUM( IF( ping_bucket = 'F_61-100', u_maid, 0 ) ) AS 'F_61-100',
SUM( IF( ping_bucket = 'G_101-500', u_maid, 0 ) ) AS 'G_101-500',
SUM( IF( ping_bucket = 'H_501+', u_maid, 0 ) ) AS 'H_501+'
FROM reports4 WHERE month between '03/19' and '04/19' and source LIKE 'mobileWalla' GROUP BY month

SELECT month as 'Date', 
SUM( IF( ping_bucket = 'A_1', u_maid, 0 )) AS 'A_1',
SUM( IF( ping_bucket = 'B_2-5', u_maid, 0 ) ) AS 'B_2-5',
SUM( IF( ping_bucket = 'C_6-10', u_maid, 0 ) ) AS 'C_6-10', 
SUM( IF( ping_bucket = 'D_11-30', u_maid, 0 ) ) AS 'D_11-30',
SUM( IF( ping_bucket = 'E_31-60', u_maid, 0 ) ) AS 'E_31-60',
SUM( IF( ping_bucket = 'F_61-100', u_maid, 0 ) ) AS 'F_61-100',
SUM( IF( ping_bucket = 'G_101-500', u_maid, 0 ) ) AS 'G_101-500',
SUM( IF( ping_bucket = 'H_501+', u_maid, 0 ) ) AS 'H_501+'  FROM
reports5 WHERE month between '03/19' and '04/19' and source LIKE 'mobileWalla' GROUP BY month

select month as 'Date' from reports5 where month between '03/19' and '04/19'
select * from reports5 where month between '03/19' and '04/19'
select * from appnexus_log order by id desc limit 80
select * from poi order by id desc limit 80
select sum(if(ModeOfPayment = 'Offline',Amount,0)) as TotalAmount from SumWithIfCondition;

select * from reports2
select * from reports2 group by ping_bucket
select count(ping_bucket), ping_bucket from reports2 group by ping_bucket

select * from appnexus_log order by id desc limit 5

select seg.name, seg.detail_id, seg.type_id, seg.external_id, billboard_details.geo_path_id
    from segment as seg
    inner join billboard_details on billboard_details.id = seg.detail_id 
    and seg.type_id in (3) and seg.external_id in (
    17747470,18830848,18947478,18724771,18947478,18893249,19024090,19044116,18937423,18777165,18893084);

select distinct li.type_id, li.advertiser_id, li.custom_audience_id
from poi as p inner
join segment seg on seg.detail_id = p.id inner
join segment_lineitem sl on sl.segment_id = seg.id inner
join line_item li on sl.lineitem_id=li.id
where p.unique_id= 'P-944DT87IDD';

select * from segment_push_audit_log order by id desc;
select id, name, detail_id, type_id, external_id  from segment where external_id in (
17747470,18830848,18947478,18724771,18947478,18893249,19024090,19044116,18937423,18777165,18893084);

select * from line_item_stats where external_id = 6133442442200
select * from line_item_stats order by id desc

select * from poi_schedule order by id desc;
select * from poi where name like 'Nabeel -Poi-234';
select count(distinct unique_id) from poi_segment;
select * from poi_segment where poi_id=23;
select * from appnexus_log order by id desc limit 5;
select * from segment_schedul;
select * from poi_segment where id = 1390;
select * from app_nexus_dma;
update poi_schedule set poi_segment_id = 2741 where poi_id = 2630

select id, start_date as startdate, end_date as enddate, start_time as starttime , end_time as endtime,( CASE
WHEN CAST(start_date as date) > current_date And CAST(end_Date as date) > current_date THEN '0'
WHEN CAST(start_date as date) <= current_date And CAST(end_Date as date) >= current_date THEN '1'
WHEN CAST(start_date as date) < current_date And CAST(end_Date as date) < current_date THEN '9'
ELSE null
END ) as status  from  segment_schedule where id = (select fn_segment_schedule_dates(?))


select * from (
select seg.unique_id, count(seg.unique_id) as countGeoPath from segment seg where type_id=3 and status !=6 
group by seg.unique_id) x where x.countGeoPath =2

select  * from segment where unique_id='S-MO6956M46R'
select  * from segment where unique_id='S-MO6956M46N'
update segment set unique_id='S-MO6956M46N' where id=2380;

select  * from segment where unique_id='S-96I9M36C68'
select  * from segment where unique_id='S-96I9M36C69'
update segment set unique_id='S-96I9M36C69' where id=2324;

select  * from segment where unique_id='S-1TOMTMM682'
select  * from segment where unique_id='S-1TOMTMM683'
update segment set unique_id='S-1TOMTMM683' where id=2376;

select  * from segment where unique_id='S-C6M8MDMMRM'
select  * from segment where unique_id='S-C6M8MDMMRN'
update segment set unique_id='S-C6M8MDMMRM' where id=2389;

select  * from segment where unique_id='S-C6M8MDMMRM'
select  * from segment where unique_id='S-C6M8MDMMRN'
update segment set unique_id='S-C6M8MDMMRN' where id=2389;

select  * from segment where unique_id='S-IIM4DM780O'
select  * from segment where unique_id='S-IIM4DM780N'
update segment set unique_id='S-IIM4DM780N' where id=2351;

select * from app_nexus_dma
select * from app_nexus_region where country_name = 'United States'
select count(*) from app_nexus_city
select * from app_nexus_city order by id desc
select * from appnexus_token order by id desc limit 1

SELECT 
ts AS Date, 
SUM( IF( ping_bucket = 'A_1', total_pings, 0 ) ) AS 'A_1',
SUM( IF( ping_bucket = 'B_2-5', total_pings, 0 ) ) AS 'B_2-5',
SUM( IF( ping_bucket = 'C_6-10', total_pings, 0 ) ) AS 'C_6-10',
SUM( IF( ping_bucket = 'D_11-30', total_pings, 0 ) ) AS 'D_11-30',
SUM( IF( ping_bucket = 'E_31-60', total_pings, 0 ) ) AS 'E_31-60',
SUM( IF( ping_bucket = 'F_61-100', total_pings, 0 ) ) AS 'F_61-100',
SUM( IF( ping_bucket = 'G_101-500', total_pings, 0 ) ) AS 'G_101-500',
SUM( IF( ping_bucket = 'H_501+', total_pings, 0 ) ) AS 'H_501+'
FROM r2_test
WHERE ts between '2019-08-26' and '2019-09-06' and data_source LIKE '%mogeanSep%' and polygon Like '%NJ/NY%'
GROUP BY ts 

select distinct li.type_id, li.advertiser_id, li.custom_audience_id 
from poi as p 
inner join poi_segment ps on p.id = ps.poi_id
inner join segment seg on seg.detail_id = p.id and seg.type_id !=3
inner join segment_lineitem sl on sl.segment_id = seg.id
inner join line_item li on sl.lineitem_id=li.id where ps.unique_id= 'P-1ESPYQYN3B'


select distinct li.type_id, li.advertiser_id,li.custom_audience_id 
from segment seg 
inner join segment_lineitem sl on sl.segment_id = seg.id
inner join line_item li on sl.lineitem_id=li.id
where seg.unique_id= 'S-084M7O7OM1'

select * from segment where unique_id='S-084M7O7OM1'
select * from segment_lineitem where segment_id=3092
select * from r2_test where ts = '2019-08-15'
select * from poi_segment where unique_id= 'P-1ESPYQYN3B'

select distinct li.type_id, li.advertiser_id, li.custom_audience_id from poi as p
inner join segment seg on seg.detail_id = p.id
inner join segment_lineitem sl on sl.segment_id = seg.id
inner join line_item li on sl.lineitem_id=li.id where p.unique_id= 'P-1ESPYQYN3B'

select * from app_nexus_region
select region.id as regionId, region.name as regionName, city.id as cityId, city.name as cityName from app_nexus_region as region inner join app_nexus_city as city on region.name = city.region_name
select count(region.id) as regionId from app_nexus_region as region inner join app_nexus_city as city on region.name = city.region_name
select id,geo_path_id,modified_at,modified_by_id from billboard_details where id in (select detail_id from segment where advertiser_id = '1137') 
and front_polygon is not null and back_polygon is not null and length(front_polygon)>100 and length(back_polygon)>100
select count(*) from app_nexus_region
select count(*) from app_nexus_region where country_code = 'US'
select * from app_nexus_city

select country.id as countryId, region.country_name as countryName, region.country_code as countryCode,
region.id as regionId, region.name as regionName,(select count(*) from app_nexus_region where country_code = 'US') as count
from app_nexus_region as region
inner join app_nexus_country as country on region.country_code = country.code

select region_code, region_name from app_nexus_city group by region_code, region_name

select id, name, code, (select count(id) from quorum_app_nexus_country) as count from quorum_app_nexus_country

select * from quorum_app_nexus_region
select * from quorum_app_nexus_country
select id,name,country_code,country_name,region_code,region_name,(select count(id) from app_nexus_city) as count from app_nexus_city
select id, name, country_code, country_name, region_code, region_name, (select count(id) from app_nexus_city) as count from app_nexus_city
select country.id as countryId, country.code as countryCode, country.name as countryName,
region.id as regionId, region.name as regionName, (select count(id) from quorum_app_nexus_region) as count
from quorum_app_nexus_region as region
inner join quorum_app_nexus_country as country on country.id = region.country_id

select *  from quorum_app_nexus_country

select id, name, code, (select count(id) from quorum_app_nexus_country) as count from quorum_app_nexus_country

select country.id as countryId, country.code as countryCode, country.name as countryName,
region.id as regionId, region.name as regionName, (select count(id) from quorum_app_nexus_region) as count
from quorum_app_nexus_region as region
inner join quorum_app_nexus_country as country on country.id = region.country_id

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName, region.code as regionCode,region.name as regionName, (select count(id) from quorum_app_nexus_city) as count
from quorum_app_nexus_city as city 
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id;

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName,
country.id as countryId, region.code as regionCode,region.name as regionName,
(select count(id) from quorum_app_nexus_city where name like '%hig%') as count from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id
where city.name like '%hig%';

Unselect * from poi order by id limit 1
select * from segment where detail_id =1000
select count(*) from poi

select geo_json, latitude, longitude, name, unique_id from poi

select * from billboard_details order by id limit 1

select * from billboard_details where name like '%New test with Adams Outdoor%'
select * from app
select external_id,unique_id,expiry_days FROM segment s where advertiser_id = (select id from app_user where email = 'ianbosin@mailinator.com') and status = 1

SELECT DISTINCT s.external_id, s.expiry_days, s.status, s.unique_id AS geo_path_id FROM segment s;

select distinct s.external_id as external_id, s.status as status, cast(bd.geo_path_id as varchar) as geo_path_id from segment s 
inner join billboard_details bd 
on bd.id = s.detail_id 
union
select distinct s.external_id as external_id, s.status as status, p.unique_id as geo_path_id from segment s 
inner join poi p 
on s.detail_id = p.id

select * from fetch_sgment_ids_view_v3

select unique_id from segment where advertiser_id = 1123 and status <> 6
union
select unique_id from poi_segment where poi_id in (select id from poi where  advertiser_id = 1123 and status <> 6) and status <> 6
                
select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName,country.id as countryId , region.code as regionCode,region.name as regionName,
      (select count(id) from quorum_app_nexus_city where region_id= 3950) as count from quorum_app_nexus_city as city
      inner join quorum_app_nexus_region as region on region.id = city.region_id
      inner join quorum_app_nexus_country as country on country.id = region.country_id
      where city.region_id = 3950

select city.id as cityId, city.name as cityName, country.code as countryCode, 
country.name as countryName, country.id as countryId, region.code as regionCode,
region.name as regionName, (select count(id) from quorum_app_nexus_city) 
as count from quorum_app_nexus_city as city inner join quorum_app_nexus_region as region on region.id = city.region_id inner join quorum_app_nexus_country as country on country.id = region.country_id limit ?

select count(id) from billboard_details
select count(*) from billboard_details

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName,
country.id as countryId, region.code as regionCode,region.name as regionName,
(select count(id) from quorum_app_nexus_city where name like '%hig%') as count from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id
where city.name like '%hig%';

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName, country.id as countryId, region.code as regionCode,region.name as regionName, (select count(id) from quorum_app_nexus_city where name like '%hig%') as count from quorum_app_nexus_city as city inner join quorum_app_nexus_region as region on region.id = city.region_id inner join quorum_app_nexus_country as country on country.id = region.country_id where city.name like '%hig%';
select * from segment where name = '10-28-Date-Segment'

Unselect * from poi order by id limit 1
select * from segment where detail_id =1000
select count(*) from poi

select geo_json, latitude, longitude, name, unique_id from poi

select * from billboard_details order by id limit 1
select * from billboard_details where name like '%New test with Adams Outdoor%'
select * from app
select external_id,unique_id,expiry_days FROM segment s where advertiser_id = (select id from app_user where email = 'nabeel.amd93@gmail.com' and status = 1) and status = 1

SELECT DISTINCT s.external_id, s.expiry_days, s.status, s.unique_id AS geo_path_id FROM segment s;

select distinct s.external_id as external_id, s.status as status, cast(bd.geo_path_id as varchar) as geo_path_id from segment s 
inner join billboard_details bd 
on bd.id = s.detail_id 

union

select distinct s.external_id as external_id, s.status as status, p.unique_id as geo_path_id from segment s 
inner join poi p 
on s.detail_id = p.id


select * from fetch_sgment_ids_view_v3

select unique_id from segment where advertiser_id = 1123 and status <> 6
union
select unique_id from poi_segment where poi_id in (select id from poi where  advertiser_id = 1123 and status <> 6) and status <> 6
                
select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName,country.id as countryId , region.code as regionCode,region.name as regionName,
      (select count(id) from quorum_app_nexus_city where region_id= 3950) as count from quorum_app_nexus_city as city
      inner join quorum_app_nexus_region as region on region.id = city.region_id
      inner join quorum_app_nexus_country as country on country.id = region.country_id
      where city.region_id = 3950

select city.id as cityId, city.name as cityName, country.code as countryCode, 
country.name as countryName, country.id as countryId, region.code as regionCode,
region.name as regionName, (select count(id) from quorum_app_nexus_city) 
as count from quorum_app_nexus_city as city inner join quorum_app_nexus_region as region on region.id = city.region_id inner join quorum_app_nexus_country as country on country.id = region.country_id limit ?

select count(id) from billboard_details
select count(*) from billboard_details
select * from push_segment_detail where status = 'Pending'
select (select count(*) from  push_segment_detail where status = 'Pending') as pending, (select count(*) from  push_segment_detail where status = 'Fail') as fail
select * from push_segment_detail where size = '184739938' limit 1
select * from push_segment_detail order by id desc limit 5
select * from push_segment_detail where size = 183532354 and status = 'Pending'
select * from push_segment_detail where status = 'Fail'

// right now do fail
select * from quorum_app_nexus_dma

select dma.id as dmaId, dma.code as dmaCode, dma.name as dmaName, country.id as dmaCountryId, country.name as dmaCountryName, (select count(id) from quorum_app_nexus_dma) as dmaCount
from quorum_app_nexus_dma as dma
inner join quorum_app_nexus_country as country on country.id = dma.country_id

select * from segment where name = 'Amazon-Segment-1';
update push_segment_detail set status = 'Pending' where id in (3586,3585,3584,3583,3582)
select max(size) from push_segment_detail 

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName,
country.id as countryId, region.code as regionCode,region.name as regionName,
(select count(id) from quorum_app_nexus_city where name like '%hig%') as count from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id
where city.name like '%hig%';

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName, country.id as countryId, region.code as regionCode,region.name as regionName, (select count(id) from quorum_app_nexus_city where name like '%hig%') as count from quorum_app_nexus_city as city inner join quorum_app_nexus_region as region on region.id = city.region_id inner join quorum_app_nexus_country as country on country.id = region.country_id where city.name like '%hig%';

select * from segment where name = '10-28-Date-Segment'
select * from poi order by id limit 1
select * from segment where detail_id =1000
select count(*) from poi
select geo_json, latitude, longitude, name, unique_id from poi
select * from billboard_details order by id limit 1

select * from billboard_details where name like '%New test with Adams Outdoor%'
select external_id,unique_id,expiry_days FROM segment s where advertiser_id = (select id from app_user where email = 'nabeel.amd93@gmail.com' and status = 1) and status = 1

SELECT DISTINCT s.external_id, s.expiry_days, s.status, s.unique_id AS geo_path_id FROM segment s;

select distinct s.external_id as external_id, s.status as status, cast(bd.geo_path_id as varchar) as geo_path_id from segment s 
inner join billboard_details bd 
on bd.id = s.detail_id 
union
select distinct s.external_id as external_id, s.status as status, p.unique_id as geo_path_id from segment s 
inner join poi p 
on s.detail_id = p.id

select * from fetch_sgment_ids_view_v3;

select unique_id from segment where advertiser_id = 1123 and status <> 6
union
select unique_id from poi_segment where poi_id in (select id from poi where  advertiser_id = 1123 and status <> 6) and status <> 6
             
select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName,country.id as countryId , region.code as regionCode,region.name as regionName,
      (select count(id) from quorum_app_nexus_city where region_id= 3950) as count from quorum_app_nexus_city as city
      inner join quorum_app_nexus_region as region on region.id = city.region_id
      inner join quorum_app_nexus_country as country on country.id = region.country_id
      where city.region_id = 3950

select city.id as cityId, city.name as cityName, country.code as countryCode, 
country.name as countryName, country.id as countryId, region.code as regionCode,
region.name as regionName, (select count(id) from quorum_app_nexus_city) 
as count from quorum_app_nexus_city as city inner join quorum_app_nexus_region as region on region.id = city.region_id inner join quorum_app_nexus_country as country on country.id = region.country_id limit ?

select count(id) from billboard_details
select count(*) from billboard_details

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName, country.id as countryId, region.code as regionCode,region.name as regionName, region.id as regionId,
(select count(city.id) from quorum_app_nexus_city  city inner join quorum_app_nexus_region as region on region.id = city.region_id where city.name like '%c%') from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id inner join quorum_app_nexus_country as country on country.id = region.country_id where city.name like '%c%'

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName, country.id as countryId, region.code as regionCode,region.name as regionName, region.id as regionId,
(select count(city.id) from quorum_app_nexus_city city inner join quorum_app_nexus_region as region on region.id = city.region_id where city.name like '%c%' and region.id = 3952) from quorum_app_nexus_city as city
inner join quorum_app_nexus_region as region on region.id = city.region_id
inner join quorum_app_nexus_country as country on country.id = region.country_id
where city.name like '%c%' and region.id = 3952

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName,country.id as countryId ,region.code as regionCode,region.name as regionName, region.id as regionId,
(select count(id) from quorum_app_nexus_city where region_id=3952) as count from quorum_app_nexus_city as city 
inner join quorum_app_nexus_region as region on region.id = city.region_id 
inner join quorum_app_nexus_country as country on country.id = region.country_id   where city.region_id =3952

select * from quorum_app_nexus_city where id = 196804
select * from quorum_app_nexus_region where id = 3948

select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName, country.id as countryId, region.code as regionCode,region.name as regionName, region.id as regionId, (select count(city.id) from quorum_app_nexus_city  city inner join quorum_app_nexus_region as region on region.id = city.region_id where city.name like '%N%') from quorum_app_nexus_city as city inner join quorum_app_nexus_region as region on region.id = city.region_id inner join quorum_app_nexus_country as country on country.id = region.country_id where city.name like '%N%'
select city.id as cityId, city.name as cityName, country.code as countryCode,country.name as countryName, country.id as countryId, region.code as regionCode,region.name as regionName, region.id as regionId, (select count(city.id) from quorum_app_nexus_city city inner join quorum_app_nexus_region as region on region.id = city.region_id where city.name like '%c%' and region.id = 3952) from quorum_app_nexus_city as city inner join quorum_app_nexus_region as region on region.id = city.region_id inner join quorum_app_nexus_country as country on country.id = region.country_id where city.name like '%c%' and region.id = 3952
select (select count(*) from  push_segment_detail where status = 'Process') as process, (select count(*) from  push_segment_detail where status = 'Pending') as pending
select * from push_segment_detail order by id desc limit 5
select * from push_segment_detail where total_device_exclude = 0
select count(key) from push_segment_detail where segment_push_time like '2019-10-12%' and key like '%.txt'

select * from (
select substring(key from 0 for position('/' in key)), count(key)
from push_segment_detail where segment_push_time like '2019-10-12%' and  key like '%.txt' group by key 
) x where x.count >1;

select * from push_segment_detail order by size desc limit 1;
select max(total_device_count) as device_count from push_segment_detail
select * from push_segment_detail where status = 'Pending' and key like '%.txt'

select * from push_segment_detail where status = 'Fail' order by id desc limit 1

select * from push_segment_detail where job_id  is null

select count(*) from push_segment_detail where status = 'Pending' and key like '%.txt'
select count(*) from push_segment_detail where status = 'Pending' and key like '%.csv'

update push_segment_detail set status = 'Pending' where status = 'Fail' and key like '%.txt'
update push_segment_detail set status = 'Pending' where status = 'Fail'
update push_segment_detail set status = 'Fail' where id in (9317) // will added

select * from push_segment_detail where id = 7840
select * from appnexus_log order by id desc limit 5
select * from reqeust_audit_trail order by request_time desc limit 100
select * from segment where unique_id = 'S-RRRDYPTQHY'
select distinct ping_bucket from monthly_ping_bucket order by ping_bucket asc

SELECT custom_audience_id, name FROM segment WHERE advertiser_id=1151 
select * from segment where id = 2775

SELECT month as date,
SUM( IF( dist_bucket = 'A_0', pings_per_day, 0 ) ) AS bucket_a,
SUM( IF( dist_bucket = 'D_0.2-0.5', pings_per_day, 0 ) ) AS bucket_d,
SUM( IF( dist_bucket = 'E_0.5-1.0', pings_per_day, 0 ) ) AS bucket_e,
SUM( IF( dist_bucket = 'F_1.0-2.0', pings_per_day, 0 ) ) AS bucket_f,
SUM( IF( dist_bucket = 'G_2.0-5.0', pings_per_day, 0 ) ) AS bucket_g,
SUM( IF( dist_bucket = 'H_5.0-10.0', pings_per_day, 0 ) ) AS bucket_h,
SUM( IF( dist_bucket = 'I_10.0+', pings_per_day, 0 ) ) AS bucket_i
FROM monthly_distance_bucket
WHERE month between '2019-09-05' and '2019-09-30' and (polygon = 'nj/ny' and name = 'mogean')
GROUP BY date

SELECT date as date, name, SUM(device_count_without_overlaps) AS count
FROM daily_stats WHERE date between '2019-09-01' and '2019-10-31' and polygon = 'nj/ny' 
GROUP BY date, name;

SELECT date, name SUM(device_count_without_overlaps) AS count
FROM daily_stats
WHERE date between '2019-09-01' and '2019-10-31' and polygon = 'nj/ny' GROUP BY date , name;

select * from poi_segment limit 5;

SELECT month as 'month',
SUM(IF(name = 'mobilewala',ping_count, 0)) AS 'mobilewala',
SUM(IF(name = 'quadrant',ping_count, 0)) AS 'quadrant',
SUM(IF(name = 'mogean',ping_count, 0)) AS 'mogean'
FROM monthly_raw_summary WHERE month between '2019/09-01' and '2019/10-31' and polygon = 'nj/ny' GROUP BY month

select * from appnexus_log order by id desc limit 5;
select * from push_segment_detail limit 5;
select count(*) from push_segment_detail where key like 'S-%' and size <> 0;
select count(*) from push_segment_audit_log where segment_poi_id like 'S-%' and size <> 0;
select * from user_verification where user_id in (select * from app_user where email in('medicsi786@gmail.com', 'nabeel.amd93@gmail.com') )
update user_verification set is_consumed = 1 where id = 1205
update app_user set status = 1 where id = 1141
select name, unique_id, advertiser_id, agency_id from segment where unique_id in ('S-BR0B7RY6MT''S-8MHABMDNTG')
select name,unique_id, advertiser_id, agency_id from segment where unique_id like '%BR0B7RY6MT'
select name,unique_id, advertiser_id, agency_id from segment where unique_id like '%8MHABMDNTG'
select * from poi_segment where unique_id in ('S-BR0B7RY6MT', 'S-8MHABMDNTG')
select name, unique_id, advertiser_id, agency_id from segment where unique_id in ('S-SNBVIONNYG','S-SVSPBSD99R','S-VGYEY6C3LO','S-OMAGYDMSZT','S-NLT82TY8RO','S-LSRYATRVTR','S-B8NY1BRAAE','S-BNN7MMNSAI','S-EMA4MLRTZY','S-BR0B7RY6MT', 'S-8MHABMDNTG')
inner join app_user on  app_user.id = advertiser_id

select * from app_user where id = 1140
select * from agency_advertiser where advertiser_id = 1140

select a_user.id, a_user.comp_name, ag_av.id as ag_id,
   case when type_id = 1 then 'agency' else 'advertiser' end from app_user as a_user
      left join agency_advertiser ag_av on a_user.id = ag_av.advertiser_id and type_id = 1 and a_user.status = 6 order by a_user.id asc;
      
select * from agency_advertiser where agency_advertiser_id = 1137

SELECT month as 'month', 
 SUM(IF(name = 'mobilewala',ping_count, 0)) AS 'mobilewala', 
 SUM(IF(name = 'quadrant',ping_count, 0)) AS 'quadrant', 
 SUM(IF(name = 'mogean',ping_count, 0)) AS 'mogean' 
 FROM summary_report_1 WHERE month between '08/19' and '09/19' GROUP BY month

SELECT month as 'month',
SUM(IF( name = 'mobilewala',ping_count, 0)) AS 'mobilewala',
SUM(IF( name = 'quadrant',ping_count, 0)) AS 'quadrant',
SUM(IF( name = 'mogean',ping_count, 0)) AS 'mogean'
FROM summary_report_1 GROUP BY month


select * from quorum_app_nexus_postal_code

select distinct key from push_segment_detail where key like '%.txt'


x`
select seller_member_id::varchar from sellers where seller_member_id in (9572)


select * from c

1045
1045


select * from creatives where created_by_id = 1136 and status != 6

select * from line_item where id in (3589, 3590, 3576, 3577, 3600, 3578, 3579, 3581, 3594, 3488, 3580, 3582, 3583, 3584, 3585, 3586, 3478, 3480, 3490
)



select creatives0_.id as id1_14_, creatives0_.created_at as created_2_14_, creatives0_.created_by_id as created_3_14_, creatives0_.status as status4_14_, creatives0_.modified_at as modified5_14_, creatives0_.modified_by_id as modified6_14_, creatives0_.advertiser_id as adverti23_14_, creatives0_.adx_audit as adx_audi7_14_, creatives0_.agency_advertiser_id as agency_24_14_, creatives0_.app_audit as app_audi8_14_, creatives0_.audit_count as audit_co9_14_, creatives0_.clickurl as clickur10_14_, creatives0_.clicks as clicks11_14_, creatives0_.ctr as ctr12_14_, creatives0_.description as descrip13_14_, creatives0_.external_id as externa14_14_, creatives0_.height as height15_14_, creatives0_.image_name as image_n16_14_, creatives0_.imgurl as imgurl17_14_, creatives0_.impression as impress18_14_, creatives0_.is_self_audited as is_self19_14_, creatives0_.name as name20_14_, creatives0_.type as type21_14_, creatives0_.width as width22_14_ from creatives creatives0_ left outer join app_user appuser1_ on creatives0_.advertiser_id=appuser1_.id where creatives0_.id=? and appuser1_.id=? and creatives0_.status<>?



6390
select * from creatives where id in(3461,3481,3600,3482,3489,3478,3591 )
select * from creatives where created_by_id = 1136 and status != 6
select * from creatives where id in(3461,3481,3482,3489,3478)


select * from creatives where id in(6320,5974)




0
update creatives set advertiser_id = 1136 where id in (6386,6374,6349,6348,6390,6375,6376,6382,5974,6341,6352,6351,6350,6347,6346,6345,6344,6343,6342,6353,6362,6360,6358,6361,6359,6363,6365,6366,6324,6325,6368,6326,6371,6320)

(6386,6374,6349,6348,6390,6375,6376,6382,5974,6341,6352,6351,6350,6347,6346,6345,6344,6343,6342,6353,6362,6360,6358,6361,6359,6363,6365,6366,6324,6325,6368,6326,6371,6320)



select (select count(*) from  push_segment_detail where status = 'Process') as process, (select count(*) from  push_segment_detail where status = 'Pending') as pending

select * from push_segment_detail order by id desc limit 5

select sum(size) from push_segment_detail where status = 'Pending'
select * from app_user where id = 1138

select * from push_segment_detail where status = 'Pending' order by id desc

select id, name from poi where name = '100-000000-Meters'

select * from push_segment_detail where total_device_exclude = 0

select count(*) from push_segment_detail

select * from push_segment_detail limit 1


select count(key) from push_segment_detail where segment_push_time like '2019-10-24%' and key like '%.txt'

select * from (
select substring(key from 0 for position('/' in key)), count(key) from push_segment_detail where segment_push_time like '2019-10-12%' and  key like '%.txt' group by key 
) x where x.count >1
select * from push_segment_detail order by size desc limit 1

select max(total_device_count) as device_count from push_segment_detail

select * from push_segment_detail where status = 'Pending' and key like '%.txt' limit 5

select * from push_segment_detail where status = 'Fail' order by id desc limit 1

select * from push_segment_detail where job_id  is null

select * from appnexus_log  order by id desc limit 6


select count(*) from push_segment_detail where status = 'Pending' and key like '%.txt'
select count(*) from push_segment_detail where status = 'Pending' and key like '%.csv'

update push_segment_detail set status = 'Pending' where status = 'Fail' and key like '%.txt'

update push_segment_detail set status = 'Pending' where status = 'Fail'

update push_segment_detail set status = 'Fail' where id in (9317) // will added

select * from push_segment_detail where id = 7840

select * from appnexus_log order by id desc limit 5

select * from reqeust_audit_trail order by request_time desc limit 100

select * from segment where unique_id = 'S-RRRDYPTQHY'

select * from push_segment_detail where total_device_exclude is not null
