INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1000,'2023-03-26 21:36:25.433','Queue fetch limit','حدود إحضار QUEUE',0,'QUEUE FETCH LIMIT','QUEUE_FETCH_LIMIT','500',false,1000,NULL),
	 (1001,'2023-03-26 21:38:05.635','Scheduler last run time for the scheduler','آخر وقت تشغيل للجدول',0,'SCHEDULER''S LAST RUN TIME','SCHEDULER_LAST_RUN_TIME','2023-03-26 21:37:25.525 +0300',false,1000,NULL),
	 (1002,'2023-03-27 11:02:53.61','Email sender for send the email
',NULL,NULL,NULL,'EMAIL_SENDER','nabeel.amd93@gmail.com',false,1000,NULL),
	 (1004,'2023-03-27 17:16:52.389','Reset password link for send the email
',NULL,NULL,NULL,'RESET_PASSWORD_LINK','http://localhost:4200/resetpass',false,1000,NULL),
	 (1043,'2023-04-05 20:27:29.556','upload limit max 5000',NULL,NULL,NULL,'UPLOAD_LIMIT','5000',false,1000,NULL),
	 (1044,'2023-04-05 20:28:10.205','download content limit 5000',NULL,NULL,NULL,'DOWNLOAD_LIMIT','5000',false,1000,NULL),
	 (1119,'2023-04-11 19:40:10.318','Select Status','حدد الحالة',101,'Select Status','APPLICATION_STATUS','Select Status',true,1000,NULL),
	 (1120,'2023-04-11 19:40:56.389','Inactive','غير نشط',0,'In Active','INACTIVE','In Active',false,1000,1119),
	 (1121,'2023-04-11 19:41:10.378','Active','نشيط',1,'Active','ACTIVE','Active',false,1000,1119),
	 (1122,'2023-04-11 19:41:21.788','Delete','يمسح',2,'Delete','DELETE','Delete',false,1000,1119);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1257,'2023-07-24 08:40:03.705','New Request','طلب جديد',3,'New Request','NEW_REQUEST','New Reqeust',false,1000,1119),
	 (1338,'2023-08-26 12:04:41.476','Bid Request Status','حالة طلب العطاء',123,'Bid Request Status','BID_REQUEST_STATUS','Bid Request Status',true,1000,NULL),
	 (1339,'2023-08-26 12:11:08.326','When the bidder withdraw and not attending the bid option','ينسحب',1,'With Draw','WITHDRAW','WITHDRAW',true,1000,1338),
	 (1340,'2023-08-26 12:12:57.424','when the bidder attaches the client''s request.','جديد',0,'New','NEW_BID','New',true,1000,1338),
	 (1341,'2023-08-26 12:14:19.016','When the bidder attends the bid auctions','حضور',2,'Attending','ATTENDING','Attending',true,1000,1338),
	 (1342,'2023-08-26 12:15:13.582','When the bidder bid the bid auctions','مُنَاقَصَة',3,'Bid','BID','Bid',true,1000,1338),
	 (1253,'2023-07-20 23:40:37.111','UI_LOOKUP -> true & false','بحث واجهة المستخدم',116,'UI LOOKUP','UI_LOOKUP','UI_LOOKUP',true,1000,NULL),
	 (1254,'2023-07-21 10:15:25.677','False use to represent the action need to on off','خطأ شنيع',0,'False','FALSE','false',true,1000,1253),
	 (1255,'2023-07-21 10:16:01.945','True use to represent the action needs to on off','حقيقي',1,'True','TRUE','true',true,1000,1253),
	 (1258,'2023-07-24 21:28:01.948','Login link for sending the email','رابط الدخول',117,'LOGIN LINK','LOGIN_LINK','http://localhost:4200/login',false,1000,NULL);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1361,'2023-10-08 06:41:09.464','Not Bid','ليس العطاء',4,'Not Bid','NOT_BID','Not Bid',true,1000,1338),
	 (1362,'2023-10-08 06:41:38.002','Win','يفوز',5,'Win','WIN','Win',true,1000,1338),
	 (1327,'2023-08-04 16:17:44.668','Bucket Folder For Store Image','مجلد دلو',121,'Bucket Folder','BUCKET_FOLDER','ttender-bucket',false,1000,NULL),
	 (1328,'2023-08-04 16:19:34.955','Bucket Folder Use To Store Asset','أصول العميل',0,'Client Asset','CR_ASSET','cr-asset',false,1000,1327),
	 (1318,'2023-08-01 20:07:51.458','Client Request Status','حالة طلب العميل',120,'Client Request Status','CLIENT_REQUEST_STATUS','Client Request Status',true,1000,NULL),
	 (1319,'2023-08-01 20:08:27.221','warning','جديد',0,'New','NEW','New',true,1000,1318),
	 (1320,'2023-08-01 20:08:46.351','warning','مراجعة',3,'Review','REVIEW','Review',true,1000,1318),
	 (1321,'2023-08-01 20:09:01.139','error','مرفوض',1,'Rejected','REJECTED','Rejected',true,1000,1318),
	 (1322,'2023-08-01 20:09:13.797','success','موافقة',2,'Approved','APPROVED','Approved',true,1000,1318),
	 (1323,'2023-08-01 20:09:27.861','info','تعيين',6,'Assign','ASSIGN','Assign',true,1000,1318);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1324,'2023-08-01 20:09:52.071','info','مزايدة',4,'Bidding','BIDDING','Bidding',true,1000,1318),
	 (1325,'2023-08-01 20:10:18.583','success','مكتمل',8,'Completed','COMPLETED','Completed',true,1000,1318),
	 (1326,'2023-08-01 20:10:33.068','warning','في تَقَدم',7,'InProgress','IN_PROGRESS','InProgress',true,1000,1318),
	 (1330,'2023-08-06 17:26:35.905','Select Time Duration','مدة',122,'Duration','DURATION','DURATION',true,1000,NULL),
	 (1331,'2023-08-06 17:27:19.088','One Month','شهر واحد',0,'One Month','ONE_MONTH','One Month',true,1000,1330),
	 (1332,'2023-08-06 17:27:46.021','Six Month','ستة أشهر',1,'Six Month','SIX_MONTH','Six Month',true,1000,1330),
	 (1333,'2023-08-06 17:28:14.392','One Year','سنة واحدة',2,'One Year','ONE_YEAR','One Year',true,1000,1330),
	 (1334,'2023-08-06 17:29:42.419','Other Duration','مدة أخرى',3,'Other Duration','OTHER_DURATION','Other Duration',true,1000,1330),
	 (1260,'2023-08-01 18:32:04.734','Select City Name','أسماء الكلاب',118,'City Name','CITY_NAME','City Name',true,1000,NULL),
	 (1261,'2023-08-01 18:34:44.933','Doha','الدوحة',0,'Doha','DOHA','Doha',true,1000,1260);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1262,'2023-08-01 18:36:02.596','Al-Ghuwayriyah','الغويرية',1,'Al-Ghuwayriyah','AL_GHUWAYRIYAH','Al-Ghuwayriyah',true,1000,1260),
	 (1263,'2023-08-01 18:42:01.557','Al Rayyan Municipality','بلدية الريان',2,'Al Rayyan Municipality','AL_RAYYAN_MUNICIPALITY','Al Rayyan Municipality',true,1000,1260),
	 (1264,'2023-08-01 18:43:06.236','Al Wakrah','الوكرة',3,'Al Wakrah','AL_WAKRAH','Al Wakrah',true,1000,1260),
	 (1265,'2023-08-01 19:24:59.82','Madinat ash Shamal','مدينة الشمال',4,'Madinat ash Shamal','MADINAT_ASH_SHAMAL','Madinat ash Shamal',true,1000,1260),
	 (1266,'2023-08-01 19:25:40.202','Umm Salal Muhammed','أم صلال محمد',5,'Umm Salal Muhammed','UMM_SALAL_MUHAMMED','Umm Salal Muhammed',true,1000,1260),
	 (1267,'2023-08-01 19:26:10.002','Mesaieed','واسطة',6,'Mesaieed','MESAIEED','Mesaieed',true,1000,1260),
	 (1268,'2023-08-01 19:26:41.308','Ar-Rayyan','الريان',7,'Ar-Rayyan','AR_RAYYAN','Ar-Rayyan',true,1000,1260),
	 (1269,'2023-08-01 19:27:04.637','Dukhan','دوكان',8,'Dukhan','DUKHAN','Dukhan',true,1000,1260),
	 (1270,'2023-08-01 19:27:26.535','Al-Jumayliyah','الجميلية',9,'Al-Jumayliyah','AL-JUMAYLIYAH','Al-Jumayliyah',true,1000,1260),
	 (1271,'2023-08-01 19:27:46.51','Al Khor','أل خر',10,'Al Khor','AL_KHOR','Al Khor',true,1000,1260);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1272,'2023-08-01 19:28:07.848','Abu Thaylah','أبو طيلة',11,'Abu Thaylah','ABU_THAYLAH','Abu Thaylah',true,1000,1260),
	 (1273,'2023-08-01 19:28:25.516','Rawdat Rashed','روضة راشد',11,'Rawdat Rashed','RAWDAT_RASHED','Rawdat Rashed',true,1000,1260),
	 (1274,'2023-08-01 19:28:50.667','Al-Khisah','الخيسة',12,'Al-Khisah','AL_KHISAH','Al-Khisah',true,1000,1260),
	 (1329,'2023-08-04 16:20:07.668','Bucket Folder Use To Profile','حساب تعريفي',1,'Profile','PROFILE','profile',false,1000,1327),
	 (1275,'2023-08-01 19:29:09.926','Umm Qarn','أم قرن',13,'Umm Qarn','UMM_QARN','Umm Qarn',true,1000,1260),
	 (1363,'2023-10-08 06:47:40.089','success','تم تقديم العطاءات',5,'Bidding Done','BIDDING_DONE','Bidding Done',true,1000,1318),
	 (1276,'2023-08-01 19:29:25.669','Sumaysimah','سميسمة',14,'Sumaysimah','SUMAYSIMAH','Sumaysimah',true,1000,1260),
	 (1277,'2023-08-01 19:29:46.335','Al Ruwais','الرويس',15,'Al Ruwais','AL_RUWAIS','Al Ruwais',true,1000,1260),
	 (1278,'2023-08-01 19:30:05.256','Al Wukair','أل وقير',15,'Al Wukair','AL_WUKAIR','Al Wukair',true,1000,1260),
	 (1279,'2023-08-01 19:30:32.525','Zubarah Town Ruins','أطلال بلدة الزبارة',16,'Zubarah Town Ruins','ZUBARAH_TOWN_RUINS','Zubarah Town Ruins',true,1000,1260);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1280,'2023-08-01 19:31:27.269','Qalaat Al Thaqab','قالت أل ثقب',17,'Qalaat Al Thaqab','QALAAT_AL_THAQAB','Qalaat Al Thaqab',true,1000,1260),
	 (1281,'2023-08-01 19:31:48.842','Al Hitmi','الهتمي',18,'Al Hitmi','AL_HITMI','Al Hitmi',true,1000,1260),
	 (1282,'2023-08-01 19:32:07.24','Fuwayrit','فويرت',19,'Fuwayrit','FUWAYRIT','Fuwayrit',true,1000,1260),
	 (1283,'2023-08-01 19:33:23.219','Al Bida Ash Sharqiyah','أل بيضة أش شرقيه',20,'Al Bida Ash Sharqiyah','AL_BIDA_ASH_SHARQIYAH','Al Bida Ash Sharqiyah',true,1000,1260),
	 (1284,'2023-08-01 19:33:50.618','Al Khuwayr','أل خوير',21,'Al Khuwayr','AL_KHUWAYR','Al Khuwayr',true,1000,1260),
	 (1285,'2023-08-01 19:34:34.924','Al Hilal ash Sharqiyah','أل هلال أش شرقيه',22,'Al Hilal ash Sharqiyah','AL_HILAL_ASH_SHARQIYAH','Al Hilal ash Sharqiyah',true,1000,1260),
	 (1286,'2023-08-01 19:35:07.181','Abu az Zuluf','أبو عز زلف',23,'Abu az Zuluf','ABU_AZ_ZULUF','Abu az Zuluf',true,1000,1260),
	 (1287,'2023-08-01 19:37:05.486','Al Khulaifat','أل خليفة',24,'Al Khulaifat','AL_KHULAIFAT','Al Khulaifat',true,1000,1260),
	 (1288,'2023-08-01 19:37:25.539','Al Kharrara','أل قهررر',25,'Al Kharrara','AL_KHARRARA','Al Kharrara',true,1000,1260),
	 (1289,'2023-08-01 19:37:50.418','Lusail','لوسيل',26,'Lusail','LUSAIL','Lusail',true,1000,1260);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1290,'2023-08-01 19:38:22.022','Al Utouriya','العتورية',27,'Al Utouriya','AL_UTOURIYA','Al Utouriya',true,1000,1260),
	 (1291,'2023-08-01 19:38:46.372','Al-Kiranah','الكيرانة',28,'Al-Kiranah','AL_KIRANAH','Al-Kiranah',true,1000,1260),
	 (1292,'2023-08-01 19:39:23.228','Al Nasraniya','أل نصرانية',29,'Al Nasraniya','AL_NASRANIYA','Al Nasraniya',true,1000,1260),
	 (1293,'2023-08-01 19:39:50.389','Wadi Al Wasaah','وادي أل وصاح',30,'Wadi Al Wasaah','WADI_AL_WASAAH','Wadi Al Wasaah',true,1000,1260),
	 (1294,'2023-08-01 19:40:13.091','Madinat al Kaban','مدينة أل كابن',31,'Madinat al Kaban','MADINAT_AL_KABAN','Madinat al Kaban',true,1000,1260),
	 (1295,'2023-08-01 19:41:03.721','Al Masrouhiya','أل مسرحية',32,'Al Masrouhiya','AL_MASROUHIYA','Al Masrouhiya',true,1000,1260),
	 (1296,'2023-08-01 19:41:22.098','Leabaib','سرير',33,'Leabaib','LEABAIB','Leabaib',true,1000,1260),
	 (1297,'2023-08-01 19:41:51.634','Ain Sinan','عين سنان',34,'Ain Sinan','AIN_SINAN','Ain Sinan',true,1000,1260),
	 (1298,'2023-08-01 19:42:08.709','Al Sakhama','أل زخما',35,'Al Sakhama','AL_SAKHAMA','Al Sakhama',true,1000,1260),
	 (1299,'2023-08-01 19:43:16.602','Abu Samra','ابو سمرة',36,'Abu Samra','ABU_SAMRA','Abu Samra',true,1000,1260);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1300,'2023-08-01 19:43:38.992','Al Doha Al Jadeeda','أل دوحة أل جديدة',37,'Al Doha Al Jadeeda','AL_DOHA_AL_JADEEDA','Al Doha Al Jadeeda',true,1000,1260),
	 (1301,'2023-08-01 19:43:59.649','Muaither','الأم',38,'Muaither','MUAITHER','Muaither',true,1000,1260),
	 (1302,'2023-08-01 19:44:39.268','Al Murqab','المرقب',39,'Al Murqab','AL_MURQAB','Al Murqab',true,1000,1260),
	 (1303,'2023-08-01 19:45:02.918','Al Jasra','أل جسرا',40,'Al Jasra','AL_JASRA','Al Jasra',true,1000,1260),
	 (1304,'2023-08-01 19:45:20.688','Al Ghanim','أل غنيم',41,'Al Ghanim','AL_GHANIM','Al Ghanim',true,1000,1260),
	 (1305,'2023-08-01 19:46:20.154','Al Markhiya','أل مرخية',42,'Al Markhiya','AL_MARKHIYA','Al Markhiya',true,1000,1260),
	 (1306,'2023-08-01 19:46:38.909','Al Wajba','أل وجبة',43,'Al Wajba','AL_WAJBA','Al Wajba',true,1000,1260),
	 (1307,'2023-08-01 19:47:02.22','Al Waab','أل واب',44,'Al Waab','AL_WAAB','Al Waab',true,1000,1260),
	 (1308,'2023-08-01 19:49:43.799','Mesaimeer','بحيرة ميساي',45,'Mesaimeer','MESAIMEER','Mesaimeer',true,1000,1260),
	 (1309,'2023-08-01 19:50:09.843','Ain Khaled','أين خالد',46,'Ain Khaled','AIN_KHALED','Ain Khaled',true,1000,1260);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1310,'2023-08-01 19:50:53.923','Rawdat Al Hamama','روضة أل حمامة',47,'Rawdat Al Hamama','RAWDAT_AL_HAMAMA','Rawdat Al Hamama',true,1000,1260),
	 (1311,'2023-08-01 19:51:16.52','Dakhira','ذخيرة',49,'Dakhira','DAKHIRA','Dakhira',true,1000,1260),
	 (1249,'2023-07-12 10:27:50.284','NOTIFICATION_STATUS','حالة الإخطار
',115,'Notification Status','NOTIFICATION_STATUS','NOTIFICATION_STATUS',true,1000,NULL),
	 (1250,'2023-07-12 10:28:27.545','UNREAD','غير مقروء',0,'Un Read','UNREAD','UNREAD',false,1000,1249),
	 (1251,'2023-07-12 10:28:42.201','READ','أحمر',1,'Read','READ','READ',false,1000,1249),
	 (1246,'2023-07-11 16:44:31.946','Notification Type','نوع إعلام',114,'Notification Type','NOTIFICATION_TYPE','NOTIFICATION_TYPE',false,1000,NULL),
	 (1259,'2023-07-26 13:39:39.719','User Notification','إشعار المستخدم',0,'User Notification','USER_NOTIFICATION','User Notification',false,1000,1246),
	 (1248,'2023-07-11 16:46:47.9','OTHER_NOTIFICATION','إخطار آخر',1,'Other Notifaction','OTHER_NOTIFICATION','Other Notifaction',false,1000,1246),
	 (1229,'2023-06-27 06:37:11.718','Email Template','نموذج البريد الإلكتروني',112,'Email Template','EMAIL_TEMPLATE','Email Template',true,1000,NULL),
	 (1233,'2023-06-27 06:37:11.718','FORGOT PASSWORD','هل نسيت كلمة السر',0,'Forgot Password','FORGOT_PASS','FORGOT PASSWORD',true,1000,1229);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1234,'2023-06-27 06:37:11.718','UPDATE_ACCOUNT_PROFILE','تحديث الحساب',1,'Update Account','UPDATE_ACCOUNT_PROFILE','UPDATE ACCOUNT PROFILE',true,1000,1229),
	 (1235,'2023-06-27 06:37:11.718','REGISTER_USER_SUCCESS','تسجيل نجاح المستخدم',2,'Register User Success','REGISTER_USER_SUCCESS','REGISTER USER SUCCESS',true,1000,1229),
	 (1236,'2023-06-27 06:37:11.718','CLOSE_ACCOUNT','حساب مغلق',3,'Close Account','CLOSE_ACCOUNT','CLOSE ACCOUNT',true,1000,1229),
	 (1237,'2023-06-27 06:37:11.718','RESET PASSWORD','إعادة تعيين كلمة المرور',4,'Reset Password','RESET_PASS','RESET PASSWORD',true,1000,1229),
	 (1238,'2023-06-27 06:37:11.718','REGISTER_USER','سجل المستخدم',5,'Register User','REGISTER_USER','REGISTER USER',true,1000,1229),
	 (1239,'2023-06-27 06:37:11.718','REGISTER USER CANCEL','تسجيل المستخدم إلغاء',6,'Register User Cancel','REGISTER_USER_CANCEL','REGISTER USER CANCEL',true,1000,1229),
	 (1337,'2023-08-23 17:30:31.626','Template Id Use when admin reject his/her request','رفض طلب مشروع العميل',10,'Client Project Request Reject','CLIENT_PROJECT_REQUEST_REJECT','CLIENT PROJECT REQUEST REJECT',true,1000,1229),
	 (1364,'2023-10-08 06:59:15.969','Active Account','حساب نشط',12,'Active Account','ACTIVE_ACCOUNT','Active Account',true,1000,1229),
	 (1365,'2023-10-08 06:59:48.259','Block Account','حظر الحساب',13,'Block Account','BLOCK_ACCOUNT','Block Account',true,1000,1229),
	 (1366,'2023-10-08 07:00:39.245','Project Approval Notification','إشعار الموافقة على المشروع',14,'Project Approval Notification','PROJECT_APPROVAL_NOTIFICATION','Project Approval Notification',true,1000,1229);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1368,'2023-10-08 07:02:26.136','Request Awarded To Consultant','تم منح الطلب للاستشاري',16,'Request Awarded To Consultant','REQUEST_AWARDED_TO_CONSULTANT','Request Awarded To Consultant',true,1000,1229),
	 (1369,'2023-10-08 07:04:39.732','Project Completion Notification ','إشعار استكمال المشروع',17,'Project Completion Notification ','PROJECT_COMPLETION_NOTIFICATION','Project Completion Notification ',true,1000,1229),
	 (1003,'2023-09-09 14:08:28.804','Invitation to Participate in Bidding Process','دعوة للمشاركة في عملية تقديم العطاءات',11,'Invitation to Participate in Bidding Process','INVITATION_TO_PARTICIPATE_IN_BIDDING_PROCESS','INVITATION TO PARTICIPATE IN BIDDING PROCESS',true,1000,1229),
	 (1256,'2023-07-22 09:44:37.157','REGISTER USER ADMIN EMAIL','تسجيل البريد الإلكتروني الخاص بالمسؤول',7,'Register User Admin Email','REGISTER_USER_ADMIN_EMAIL','REGISTER USER ADMIN EMAIL',true,1000,1229),
	 (1335,'2023-08-07 17:14:17.203','Client Submits New Project Request','يتقدم العميل بطلب مشروع جديد',8,'Client Submits New Project Request','CLIENT_SUBMITS_NEW_PROJECT_REQUEST','CLIENT SUBMITS NEW PROJECT REQUEST',true,1000,1229),
	 (1336,'2023-08-07 17:15:30.445','Client Project Request','طلب مشروع العميل',9,'Client Project Request','CLIENT_PROJECT_REQUEST','CLIENT PROJECT REQUEST',true,1000,1229),
	 (1367,'2023-10-08 07:01:55.931','Request Awarded To Contractor','تم منح الطلب للمقاول',15,'Request Awarded To Contractor','REQUEST_AWARDED_TO_CONTRACTOR','Request Awarded To Contractor',true,1000,1229),
	 (1370,'2023-10-08 07:07:22.703','Price Type','نوع السعر',124,'Price Type','PRICE_TYPE','Price Type',true,1000,NULL),
	 (1371,'2023-10-08 07:08:00.269','Hundred','مائة',0,'Hundred','HUNDRED','Hundred',true,1000,1370),
	 (1372,'2023-10-08 07:08:27.323','Thousand','ألف',1,'Thousand','THOUSAND','Thousand',true,1000,1370);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1373,'2023-10-08 07:09:03.384','Million','مليون',2,'Million','MILLION','Million',true,1000,1370),
	 (1374,'2023-10-08 07:09:26.917','Billion','مليار',3,'Billion','BILLION','Billion',true,1000,1370),
	 (1375,'2023-10-08 07:09:47.833','Trillion','تريليون',4,'Trillion','TRILLION','Trillion',true,1000,1370),
	 (1376,'2023-10-08 07:10:17.966','Quadrillion','كوادريليون',5,'Quadrillion','QUADRILLION','Quadrillion',true,1000,1370),
	 (1312,'2023-08-01 19:54:18.636','Construction Type','نوع البناء',119,'Construction Type','CONSTRUCTION_TYPE','Construction Type',true,1000,NULL),
	 (1313,'2023-08-01 19:54:55.698','House','منزل',0,'House','HOUSE','House',true,1000,1312),
	 (1314,'2023-08-01 19:55:18.711','Road','طريق',1,'Road','ROAD','Road',true,1000,1312),
	 (1315,'2023-08-01 19:55:39.16','Under Ground Work','تحت الأرض العمل',2,'Under Ground Work','UNDER_GROUND_WORK','Under Ground Work',true,1000,1312),
	 (1316,'2023-08-01 19:56:06.999','Building','مبنى',3,'Building','BUILDING','Building',true,1000,1312),
	 (1317,'2023-08-01 19:56:26.334','Other','آخر',4,'Other','OTHER','Other',true,1000,1312);
INSERT INTO public.lookup_data (lookup_id,date_created,description,lookup_arb_name,lookup_code,lookup_eng_name,lookup_type,lookup_value,ui_lookup,app_user_id,parent_lookup_id) VALUES
	 (1252,'2023-07-20 14:48:52.569','The message disappears after 10 days','وقت اختفاء الإخطار',10,'Notification Disappear Time','NOTIFICATION_DISAPPEAR_TIME','NOTIFICATION_DISAPPEAR_TIME',true,1000,NULL),
	 (1377,'2023-11-19 09:58:16.616','Bucket Folder Use To Store Supplier Asset','المورد',2,'SUPPLIER','SUPPLIER','supplier',false,1000,1327),
	 (1378,'2023-11-19 10:00:05.827','Bucket Folder Use To Store Supplier Product Asset','منتج',3,'Product','PRODUCT','supplier/%d/product',false,1000,1327),
	 (1009,'2023-03-31 16:24:02.503','Super admin username detail',NULL,21,NULL,'SUPER_ADMIN','ttender.superadmin',false,1000,NULL);
