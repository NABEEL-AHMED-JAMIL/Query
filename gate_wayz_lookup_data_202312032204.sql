
INSERT INTO public.gate_wayz_lookup_data
(lookup_id, date_created, date_updated, status, "uuid", description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES(14, '2023-08-16 18:36:41.857', '2023-08-16 18:36:41.857', 1, 'd2eb7fa7-aa51-4e8a-9a59-c640b0031199', 'UI_LOOKUP -> true & false', 109, 'UI_LOOKUP', 'UI_LOOKUP', true, 1, NULL, NULL);



INSERT INTO public.gate_wayz_lookup_data (date_created,date_updated,status,"uuid",description,lookup_code,lookup_type,lookup_value,ui_lookup,created_by_id,updated_by_id,parent_lookup_id) VALUES
	 ('2023-08-16 18:38:45.57','2023-08-16 18:38:45.57',1,'7dbc3917-df2e-48ef-8062-d9b2b3d9a731','False use to represent the action need to on off',0,'FALSE','FALSE',true,1,1,14),
	 ('2023-08-16 18:38:45.585','2023-08-16 18:38:45.585',1,'c3b20d7f-cc15-49fb-94a7-b5c91aa3b707','True use to represent the action needs to on off',1,'TRUE','TRUE',true,1,1,14);
