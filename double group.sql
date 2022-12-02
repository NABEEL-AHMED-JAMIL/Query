select temp_col.entry || '-Time' as entry, count(*)
from (
     select pd.permit_id, bt.permit_id, count(*) as entry from permit_detail pd
     left join btx_detail bt on bt.permit_id = pd.permit_id
     where bt.btx_type = '1'
     group by bt.permit_id, pd.permit_id
) temp_col
group by temp_col.entry;

select * from btx_detail bt where bt.permit_id = 1002;

select temp_col.entry, temp_col.country, count(*)
from (
     select bt.permit_id, pd.country , count(*) as entry from permit_detail pd
     left join btx_detail bt on bt.permit_id = pd.permit_id
     where bt.btx_type = '1'
     group by bt.permit_id, pd.country) temp_col
group by temp_col.entry, temp_col.country;

