INSERT INTO public.gate_wayz_user (date_created,date_updated,status,uuid,email,first_name,gender,last_name,mobile,"password",user_type,username,created_by_id,updated_by_id,profile_image) VALUES
('2023-07-19 20:26:37.317','2023-07-19 20:26:37.317',1,'bda61818-148c-44c9-81d3-cf44b0e32b70','nabeel.amd@gmail.com','Ahtesham','M','Ahmed','971501234567','$2a$10$BjWJZHpfY/k1mNKyAc6JD.jFWv5Tp4.ht3BDJ8N/a1EURvdPjEli6',NULL,'username',NULL,NULL,'a1.png');
--NOTE: FORGET PASSWORD and then you will be able to login
--her device py jo password bnta hai us ma device factor b hai


--run these to files: gate_wayz_country_list.sql and gate_wayz_destination_list.sql


INSERT INTO public.gate_wayz_role (id, date_created,date_updated,status,uuid,description,"name",created_by_id,updated_by_id) VALUES
(1, '2023-08-12 20:43:35.305','2023-08-12 20:43:35.305',1,'373c754c-8276-4fc5-900a-c016652b0022','ROLE_B2C_INBOUND_MANAGER','ROLE_B2C_INBOUND_MANAGER',1,1),
(2, '2023-08-12 20:43:55.809','2023-08-12 20:43:55.809',1,'0dbc7a30-905f-4198-b4c4-33fb21fe0ea5','ROLE_B2B_MANAGER','ROLE_B2B_MANAGER',1,1),
(3, '2023-08-12 20:44:04.691','2023-08-12 20:44:04.691',1,'cf77b2f5-55f4-48d7-a83f-55bef1726fcd','ROLE_FINANCE_MANAGER','ROLE_FINANCE_MANAGER',1,1),
(4, '2023-08-12 20:44:11.642','2023-08-12 20:44:11.642',1,'e55a0c8a-944d-4783-b0f9-b26a9ce77409','ROLE_OPERATION_MANAGER','ROLE_OPERATION_MANAGER',1,1),
(5, '2023-08-12 20:44:18.436','2023-08-12 20:44:18.436',1,'70bc322a-af45-4a17-aaa8-4aa597708a7a','ROLE_AGENT_USER','ROLE_AGENT_USER',1,1),
(6, '2023-08-12 20:44:25.536','2023-08-12 20:44:25.536',1,'a88ee56e-3898-4d17-b051-3e540a709fc4','ROLE_TEAM_USER','ROLE_TEAM_USER',1,1),
(7, '2023-08-12 20:43:02.449','2023-08-12 20:43:02.449',1,'6f9f7cb9-cf71-4588-8a58-70cb362d5b9c','ROLE_B2C_OUTBOUND_MANAGER','ROLE_B2C_OUTBOUND_MANAGER',1,1),
(8, '2023-08-12 20:43:27.463','2023-08-12 20:43:27.463',1,'13a6c292-bce3-448f-8da0-fea18dabc2a0','ROLE_ROTE_USER','ROLE_ROTE_USER',1,1),
(9, '2023-08-12 20:43:48.55','2023-08-12 20:43:48.55',1,'15bdbdaf-ead8-427c-967e-2116d43b76e9','ROLE_B2C_IMMIGRATION_MANAGER','ROLE_B2C_IMMIGRATION_MANAGER',1,1);



INSERT INTO public.gate_wayz_user_role (date_created,created_by_id,role_id,user_id) VALUES
('2023-07-19 20:26:37.317',1,8,1);



INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (1, '2023-09-06 02:21:01.776000', '2023-09-06 02:21:01.776000', 1, '3dd8576e-c183-44f5-929a-6544510e4b71', 'HOME_PAGE', 'HOME_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (2, '2023-09-06 02:21:17.103000', '2023-09-06 02:21:17.103000', 1, '2fd2ab68-ba40-4c84-840a-24cad3cea589', 'APP_SETTING_PAGE', 'APP_SETTING_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (3, '2023-09-06 02:21:25.058000', '2023-09-06 02:21:25.058000', 1, '84c5daa5-98f9-41ad-a1ff-ca280c777513', 'MANAGE_LOOKUP_PAGE', 'MANAGE_LOOKUP_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (4, '2023-09-06 02:21:41.482000', '2023-09-06 02:21:41.482000', 1, '04dba585-40b3-4567-86e5-34aafa4808eb', 'MANAGE_TEMPLATE_PAGE', 'MANAGE_TEMPLATE_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (5, '2023-09-06 02:21:50.649000', '2023-09-06 02:21:50.649000', 1, 'bc8eb342-b05b-4128-b883-a67534cc073c', 'MANAGE_B2B_OPERATION', 'MANAGE_B2B_OPERATION', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (6, '2023-09-06 02:17:48.744000', '2023-09-06 02:17:48.744000', 1, '2f491777-fb0c-432f-914a-6da0df34ee3f', 'USER_MANAGEMENT_PAGE', 'USER_MANAGEMENT_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (7, '2023-09-06 02:18:07.680000', '2023-09-06 02:18:07.680000', 1, '2c57a7e2-52f2-4d34-850b-fadc25ffbc1d', 'MANAGE_USER_PAGE', 'MANAGE_USER_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (8, '2023-09-06 02:18:15.798000', '2023-09-06 02:18:15.798000', 1, '06f122a9-808b-4b28-898a-894b60c4b38d', 'MANAGE_TEAM_PAGE', 'MANAGE_TEAM_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (9, '2023-09-06 02:18:23.836000', '2023-09-06 02:18:23.836000', 1, 'c94dc9fd-31ab-4d00-bbb9-8e9f9db95c9b', 'MANAGE_ROLE_PAGE', 'MANAGE_ROLE_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (10, '2023-09-06 02:18:40.687000', '2023-09-06 02:18:40.687000', 1, 'dbc5ddf8-6470-4e3d-b4fd-060436a381fa', 'MANAGE_PERMISSION_PAGE', 'MANAGE_PERMISSION_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (11, '2023-09-06 02:20:33.039000', '2023-09-06 02:20:33.039000', 1, '785f570f-821b-4060-92eb-fd13f37c4f00', 'PRODUCT_MANAGEMENT_PAGE', 'PRODUCT_MANAGEMENT_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (12, '2023-09-06 02:20:48.308000', '2023-09-06 02:20:48.308000', 1, '01e64472-6ff2-448d-b4e4-40a563c74629', 'MANAGE_PRODUCT_PAGE', 'MANAGE_PRODUCT_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (13, '2023-09-06 03:35:05.676000', '2023-09-06 03:35:05.676000', 1, '1b1fd069-6b57-4788-938b-4b8d4daff478', 'MANAGE_GLOBAL_VARIABLES_PAGE', 'MANAGE_GLOBAL_VARIABLES_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (14, '2023-09-06 03:35:15.755000', '2023-09-06 03:35:15.755000', 1, '1c587641-3217-46a6-8e91-124c5549f9bc', 'MANAGE_B2C_PAGE', 'MANAGE_B2C_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (15, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-e2a5652b0752', 'MANAGE_B2C_OPERATION_PAGE', 'MANAGE_B2C_OPERATION_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (16, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-34kfj7hd8752', 'MANAGE_FINANCE_PAGE', 'MANAGE_FINANCE_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (17, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-34kfj4kcj58s', 'MANAGE_SUPPLIER_PAGE', 'MANAGE_SUPPLIER_PAGE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (18, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-fjal3592jdks', 'DELETE_LEAD', 'DELETE_LEAD', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (19, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-8374kjd73kd8', 'OUR_COST', 'OUR_COST', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (20, '2023-09-06 02:20:33.039000', '2023-09-06 02:20:33.039000', 1, '785f570f-821b-4060-92eb-fd13f37c4f01', 'MANAGE_GLOBAL_VARIABLES', 'MANAGE_GLOBAL_VARIABLES', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (21, '2023-09-06 02:20:48.308000', '2023-09-06 02:20:48.308000', 1, '01e64472-6ff2-448d-b4e4-40a563c74623', 'MANAGE_LOOKUP', 'MANAGE_LOOKUP', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (22, '2023-09-06 03:35:05.676000', '2023-09-06 03:35:05.676000', 1, '1b1fd069-6b57-4788-938b-4b8d4daff475', 'MANAGE_PERMISSION', 'MANAGE_PERMISSION', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (23, '2023-09-06 03:35:15.755000', '2023-09-06 03:35:15.755000', 1, '1c587641-3217-46a6-8e91-124c5549f96c', 'MANAGE_PRODUCT', 'MANAGE_PRODUCT', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (24, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-e2a5652bgf52', 'MANAGE_ROLE', 'MANAGE_ROLE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (25, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-34kfj7hdf752', 'MANAGE_SUPPLIER', 'MANAGE_SUPPLIER', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (26, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-34kfj4kcd58s', 'MANAGE_TEAM', 'MANAGE_TEAM', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (27, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-fjal3592jsks', 'MANAGE_TEMPLATE', 'MANAGE_TEMPLATE', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (28, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7akd8', 'MANAGE_USER', 'MANAGE_USER', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (29, '2023-09-06 03:35:25.424000', '2023-09-06 03:35:25.424000', 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7dsa8', 'MANAGE_B2C', 'MANAGE_B2C', 1, 1);



INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (1, '2023-09-06 02:23:56.429000', 1, 1, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (2, '2023-09-06 02:23:56.433000', 1, 2, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (3, '2023-09-06 02:23:56.434000', 1, 3, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (4, '2023-09-06 02:23:56.435000', 1, 4, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (5, '2023-09-06 02:23:56.436000', 1, 5, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (6, '2023-09-06 02:23:56.437000', 1, 6, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (7, '2023-09-06 02:23:56.438000', 1, 7, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (8, '2023-09-06 02:23:56.439000', 1, 8, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (9, '2023-09-06 02:23:56.439000', 1, 9, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (10, '2023-09-06 02:23:56.439000', 1, 10, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (11, '2023-09-06 02:23:56.439000', 1, 11, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (12, '2023-09-06 02:23:56.439000', 1, 12, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (13, '2023-09-06 02:23:56.439000', 1, 13, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (14, '2023-09-06 02:23:56.439000', 1, 14, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (15, '2023-09-06 02:23:56.439000', 1, 15, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (16, '2023-09-06 02:23:56.439000', 1, 16, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (17, '2023-09-06 02:23:56.439000', 1, 17, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (18, '2023-09-06 02:23:56.439000', 1, 18, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (19, '2023-09-06 02:23:56.439000', 1, 19, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (20, '2023-09-06 02:23:56.439000', 1, 20, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (21, '2023-09-06 02:23:56.439000', 1, 21, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (22, '2023-09-06 02:23:56.439000', 1, 22, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (23, '2023-09-06 02:23:56.439000', 1, 23, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (24, '2023-09-06 02:23:56.439000', 1, 24, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (25, '2023-09-06 02:23:56.439000', 1, 25, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (26, '2023-09-06 02:23:56.439000', 1, 26, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (27, '2023-09-06 02:23:56.439000', 1, 27, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (28, '2023-09-06 02:23:56.439000', 1, 28, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (29, '2023-09-06 02:23:56.439000', 1, 29, 8);



INSERT INTO public.gate_wayz_template (template_id, date_created, date_updated, status, uuid, template_content, template_name, template_type, created_by_id, updated_by_id) VALUES (35, '2023-08-16 19:44:53.442000', '2023-08-16 19:44:53.442000', 1, '6535deab-fa4a-46f6-8928-a9a82ffe236a', '<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Account Reset Confirmation</title>
    <style>
      /* Add inline CSS here */
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
      }

      .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
      }

      .header {
        background-color: #268798;
        color: #fff;

        text-align: center;
        padding: 10px 0;
      }
      .header h1 {
        font-size: 18px;
      }
      .content {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
      }
      .content .top-content {
        color: #555;
        font-size: 16px;
        font-weight: 400;
      }
      .content .body-content {
        color: #555;
        font-size: 16px;
      }
      .content .footer-content {
        color: #555;
        font-size: 16px;
        font-weight: 400;
      }
      .footer {
        text-align: center;
	padding: 10px 0;
        color: #555;
        background-color: #ccecf2;
      }
      .content figure {
        width: 100px;
        height: 100px;
        margin: auto;
      }
      .content figure img {
        width: 100%;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="header">
        <h1>Account Reset Confirmation</h1>
      </div>
      <div class="content">
        <figure>
          <img
            src="https://gatewayzstore.com/wp-content/uploads/2021/06/gatewayz-logo.png"
            alt=""
          />
        </figure>
        <p class="top-content">Dear User,</p>
        <p class="body-content">
          You have successfully reset your password. Login to access your
          password.
        </p>
        <p class="footer-content">Thanks and Regards,<br />GateWayz Support Team</p>
      </div>
      <div class="footer">&copy; 2023 Your Gatewayz . All rights reserved.</div>
    </div>
  </body>
</html>', 'RESET PASSWORD', 1, 1, 1);
INSERT INTO public.gate_wayz_template (template_id, date_created, date_updated, status, uuid, template_content, template_name, template_type, created_by_id, updated_by_id) VALUES (36, '2023-08-16 19:48:28.906000', '2023-08-16 19:48:28.906000', 1, 'a86f291d-835b-4a18-875a-d7d685188a9e', '<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>Reset Password</title>
    <meta name="description" content="Reset Password Email Template." />
    <style>
      /* Add inline CSS here */
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
      }

      .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
      }

      .header {
        background-color: #268798;
        color: #fff;
        text-align: center;
        padding: 10px 0;
      }

      .header h1 {
        font-size: 18px;
      }
      .content {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
      }
      .content .top-content {
        color: #555;
        font-size: 16px;
        font-weight: 400;
      }
      .content .body-content {
        color: #555;
        font-size: 16px;
      }
      .content .footer-content {
        color: #555;
        font-size: 16px;
        font-weight: 400;
      }
      .footer {
        text-align: center;
	padding: 10px 0;
        color: #555;
        background-color: #ccecf2;
      }
      .content figure {
        width: 100px;
        height: 100px;
        margin: auto;
      }
      .content figure img {
        width: 100%;
      }

      table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
      }

      td,
      th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
        font-size: 14px;
      }

      tr:nth-child(even) {
        background-color: #dddddd;
      }

      .link {
        color: #000;
        font-weight: 400;
        font-size: 14px;
      }

      .detail {
        color: #404f5e;
        font-size: 16px;
        margin: 0;
      }
    </style>
  </head>

  <body
    marginheight="0"
    topmargin="0"
    marginwidth="0"
    style="margin: 0px; background-color: #ebf0f5"
    leftmargin="0"
  >
    <div class="container">
      <div class="header">
        <h1>Account Created</h1>
      </div>
      <div class="content">
        <figure>
          <img
            src="https://gatewayzstore.com/wp-content/uploads/2021/06/gatewayz-logo.png"
            alt=""
          />
        </figure>
        <p>Dear User,</p>
        <p class="detail">We have received a password reset request. Please click the below link to reset your password.</p>

        <table
          cellspacing="0"
          border="0"
          cellpadding="0"
          bgcolor="#f2f3f8"
          style="
            margin: auto;
            font-family: ''Open Sans'', sans-serif;
            margin-top: 15px;
          "
        >
          <tr>
            <th>Type</th>
            <th>Detail</th>
          </tr>
          <tr>
            <td>Username</td>
          <td>${request.username}</td>
          </tr>
          <tr>
            <td>Login Page</td>
            <td><a href="${request.forgotPasswordPageUrl}" class="link">Click here.</a></td>
          </tr>
        </table>
        <p class="footer-content">Thanks and Regards,<br />GateWayz Support Team.</p>
      </div>
       <div class="footer">&copy; 2023 Your Gatewayz . All rights reserved.</div>
    </div>
  </body>
</html>', 'FORGOT PASSWORD', 0, 1, 1);
INSERT INTO public.gate_wayz_template (template_id, date_created, date_updated, status, uuid, template_content, template_name, template_type, created_by_id, updated_by_id) VALUES (37, '2023-08-19 17:21:06.942000', '2023-08-19 17:21:06.942000', 1, '8fa4d2c3-0636-49ed-be9a-0ec034e74aca', '<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>Reset Password</title>
    <meta name="description" content="Reset Password Email Template." />
    <style>
      /* Add inline CSS here */
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
      }

      .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
      }

      .header {
        background-color: #268798;
        color: #fff;
        text-align: center;
        padding: 10px 0;
      }

      .header h1 {
        font-size: 18px;
      }
      .content {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
      }
      .content .top-content {
        color: #555;
        font-size: 16px;
        font-weight: 400;
      }
      .content .body-content {
        color: #555;
        font-size: 16px;
      }
      .content .footer-content {
        color: #555;
        font-size: 16px;
        font-weight: 400;
      }
      .footer {
        text-align: center;
	padding: 10px 0;
        color: #555;
        background-color: #ccecf2;
      }
      .content figure {
        width: 100px;
        height: 100px;
        margin: auto;
      }
      .content figure img {
        width: 100%;
      }

      table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
      }

      td,
      th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
        font-size: 14px;
      }

      tr:nth-child(even) {
        background-color: #dddddd;
      }

      .link {
        color: #000;
        font-weight: 400;
        font-size: 14px;
      }

      .detail {
        color: #404f5e;
        font-size: 16px;
        margin: 0;
      }
    </style>
  </head>

  <body
    marginheight="0"
    topmargin="0"
    marginwidth="0"
    style="margin: 0px; background-color: #ebf0f5"
    leftmargin="0"
  >
    <div class="container">
      <div class="header">
        <h1>Account Created</h1>
      </div>
      <div class="content">
        <figure>
          <img
            src="https://gatewayzstore.com/wp-content/uploads/2021/06/gatewayz-logo.png"
            alt=""
          />
        </figure>
        <p>Dear User,</p>
        <p class="detail">You GateWayz account has been created. Please click the below link to login.</p>

        <table
          cellspacing="0"
          border="0"
          cellpadding="0"
          bgcolor="#f2f3f8"
          style="
            margin: auto;
            font-family: ''Open Sans'', sans-serif;
            margin-top: 15px;
          "
        >
          <tr>
            <th>Type</th>
            <th>Detail</th>
          </tr>
          <tr>
            <td>Username</td>
          <td>${request.username}</td>
          </tr>
          <tr>
            <td>Login Page</td>
            <td><a href="${request.loginPageUrl}" class="link">Click here.</a></td>
          </tr>
        </table>
        <p class="footer-content">Thanks and Regards,<br />GateWayz Support Team.</p>
      </div>
      <div class="footer">&copy; 2023 Your Gatewayz . All rights reserved.</div>
    </div>
  </body>
</html>', 'NEW REGISTER ACCOUNT', 2, 1, 1);
INSERT INTO public.gate_wayz_template (template_id, date_created, date_updated, status, uuid, template_content, template_name, template_type, created_by_id, updated_by_id) VALUES (38, '2023-09-04 19:44:53.442000', '2023-09-04 19:44:53.442000', 1, '6535deab-fa4a-46f6-8928-afg6jffe236a', '<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>New Order Posted</title>
    <meta name="description" content="New Order Posted Email Template." />
    <style>
      /* Add inline CSS here */
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
      }

      .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
      }

      .header {
        background-color: #268798;
        color: #fff;
        text-align: center;
        padding: 10px 0;
      }

      .header h1 {
        font-size: 18px;
      }
      .content {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
      }
      .content .top-content {
        color: #555;
        font-size: 16px;
        font-weight: 400;
      }
      .content .body-content {
        color: #555;
        font-size: 16px;
      }
      .content .footer-content {
        color: #555;
        font-size: 16px;
        font-weight: 400;
      }
      .footer {
        text-align: center;
        margin-top: 20px;
        color: #555;
      }
      .content figure {
        width: 100px;
        height: 100px;
        margin: auto;
      }
      .content figure img {
        width: 100%;
      }

      table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
      }

      td,
      th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
        font-size: 14px;
      }

      tr:nth-child(even) {
        background-color: #dddddd;
      }

      .link {
        color: #000;
        font-weight: 400;
        font-size: 14px;
      }

      .detail {
        color: #404f5e;
        font-size: 16px;
        margin: 0;
      }
    </style>
  </head>

  <body
    marginheight="0"
    topmargin="0"
    marginwidth="0"
    style="margin: 0px; background-color: #ebf0f5"
    leftmargin="0"
  >
    <div class="container">
      <div class="header">
        <h1>New Order Posted</h1>
      </div>
      <div class="content">
        <figure>
          <img
            src="https://gatewayzstore.com/wp-content/uploads/2021/06/gatewayz-logo.png"
            alt=""
          />
        </figure>
        <p>Dear User,</p>
        <p class="detail">New Order has been posted. Please have a look and perform further actions.</p>

        <table
          cellspacing="0"
          border="0"
          cellpadding="0"
          bgcolor="#f2f3f8"
          style="
            margin: auto;
            font-family: ''Open Sans'', sans-serif;
            margin-top: 15px;
          "
        >
          <tr>
            <th>Type</th>
            <th>Detail</th>
          </tr>
          <tr>
            <td>Lead#</td>
          <td>${request.leadId}</td>
          </tr>
          <tr>
            <td>Order#</td>
          <td>${request.orderNumber}</td>
          </tr>
          <tr>
            <td>Product</td>
          <td>${request.product}</td>
          </tr>
          <tr>
            <td>Product Type</td>
          <td>${request.productType}</td>
          </tr>
          <tr>
            <td>Nationality</td>
          <td>${request.nationality}</td>
          </tr>
          <tr>
            <td>Destination</td>
          <td>${request.destination}</td>
          </tr>
        </table>
        <p class="footer-content">Thanks and Regards,<br />GateWayz Support Team.</p>
      </div>
    </div>
    <div class="footer">&copy; 2023 Your Gatewayz . All rights reserved.</div>
  </body>
</html>', 'NEW ORDER POSTED', 3, 1, 1);
INSERT INTO public.gate_wayz_template (template_id, date_created, date_updated, status, uuid, template_content, template_name, template_type, created_by_id, updated_by_id) VALUES (39, '2023-09-04 19:44:53.442000', '2023-09-04 19:44:53.442000', 1, '6535deab-fa4a-46f6-8928-hd48jdk3ido3', '<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>Order Status Changed</title>
    <meta name="description" content="New Order Posted Email Template." />
    <style>
      /* Add inline CSS here */
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
      }

      .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
      }

      .header {
        background-color: #268798;
        color: #fff;
        text-align: center;
        padding: 10px 0;
      }

      .header h1 {
        font-size: 18px;
      }
      .content {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
      }
      .content .top-content {
        color: #555;
        font-size: 16px;
        font-weight: 400;
      }
      .content .body-content {
        color: #555;
        font-size: 16px;
      }
      .content .footer-content {
        color: #555;
        font-size: 16px;
        font-weight: 400;
      }
      .footer {
        text-align: center;
        margin-top: 20px;
        color: #555;
      }
      .content figure {
        width: 100px;
        height: 100px;
        margin: auto;
      }
      .content figure img {
        width: 100%;
      }

      table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
      }

      td,
      th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
        font-size: 14px;
      }

      tr:nth-child(even) {
        background-color: #dddddd;
      }

      .link {
        color: #000;
        font-weight: 400;
        font-size: 14px;
      }

      .detail {
        color: #404f5e;
        font-size: 16px;
        margin: 0;
      }
    </style>
  </head>

  <body
    marginheight="0"
    topmargin="0"
    marginwidth="0"
    style="margin: 0px; background-color: #ebf0f5"
    leftmargin="0"
  >
    <div class="container">
      <div class="header">
        <h1>Order Status Changed</h1>
      </div>
      <div class="content">
        <figure>
          <img
            src="https://gatewayzstore.com/wp-content/uploads/2021/06/gatewayz-logo.png"
            alt=""
          />
        </figure>
        <p>Dear User,</p>
        <p class="detail">Your Application has been updated, please login for detail.</p>
        <p class="footer-content">Thanks and Regards,<br />GateWayz Support Team.</p>
      </div>
    </div>
    <div class="footer">&copy; 2023 Your Gatewayz . All rights reserved.</div>
  </body>
</html>', 'ORDER ACTION', 4, 1, 1);





INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (1, '2023-08-12 20:15:43.250000', '2023-08-12 20:15:43.250000', 1, 'fe34bdf1-9e2b-4b42-9904-a4ce81341316', 'Status for application', 100, 'APPLICATION_STATUS', 'Application Status', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (4, '2023-08-12 20:15:43.250000', '2023-08-12 20:15:43.250000', 1, 'fe34bdf1-9e2b-4b42-9904-a4ce81341326', 'upload limit max 5000
', 101, 'UPLOAD_LIMIT', '5000', false, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (7, '2023-08-16 18:30:24.153000', '2023-08-16 18:30:24.153000', 1, '4f2c6a37-2564-4c20-a917-8cf21f474781', 'download content limit 5000', 102, 'DOWNLOAD_LIMIT', '5000', false, 1, null, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (8, '2023-08-16 18:30:24.160000', '2023-08-16 18:30:24.160000', 1, 'ad04cf1b-f266-4152-8880-f4eac3042d39', 'Email sender for send the email
', 103, 'EMAIL_SENDER', 'techsupport@gatewayz.co', false, 1, null, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (9, '2023-08-16 18:30:24.160000', '2023-08-16 18:30:24.160000', 1, '362e457f-3e9f-4db5-a083-2fc50dabf364', 'Reset password link for send the email
', 104, 'RESET_PASSWORD_LINK', 'http://localhost:4200/resetpass', false, 1, null, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (10, '2023-08-16 18:30:24.160000', '2023-08-16 18:30:24.160000', 1, '49cc0b9c-5686-41e0-bec9-b86a49e7fa56', 'Login link for sending the email', 105, 'LOGIN_LINK', 'http://localhost:4200/login', false, 1, null, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (11, '2023-08-16 18:30:24.167000', '2023-08-16 18:30:24.167000', 1, 'ef9f322b-6b42-4bf5-942f-91c1c88df12b', 'Notification Type', 106, 'NOTIFICATION_TYPE', 'NOTIFICATION_TYPE', true, 1, null, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (12, '2023-08-16 18:30:24.170000', '2023-08-16 18:30:24.170000', 1, 'b1e6e9fe-6551-40d9-b0e3-670fd85c22da', 'NOTIFICATION_STATUS', 107, 'NOTIFICATION_STATUS', 'NOTIFICATION_STATUS', true, 1, null, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (13, '2023-08-16 18:30:24.170000', '2023-08-16 18:30:24.170000', 1, 'ed171d8d-63bd-49ce-9fad-7713784dacce', 'The message disappears after 10 days', 108, 'NOTIFICATION_DISAPPEAR_TIME', 'NOTIFICATION_DISAPPEAR_TIME', false, 1, null, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (14, '2023-08-16 18:36:41.857000', '2023-08-16 18:36:41.857000', 1, 'd2eb7fa7-aa51-4e8a-9a59-c640b0031199', 'UI_LOOKUP -> true & false', 109, 'UI_LOOKUP', 'UI_LOOKUP', true, 1, null, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (19, '2023-08-16 19:24:18.936000', '2023-08-16 19:24:18.936000', 1, '527aab00-c3c2-4aa1-9690-60ec050c62c5', 'Email Template', 110, 'EMAIL_TEMPLATE', 'Email Template', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (22, '2023-08-17 16:49:12.326000', '2023-08-17 16:49:12.326000', 1, '7fd2caf3-9596-4f6b-a04f-f72ac4b71dca', 'CAPITAL FILED REGIX', 111, 'CAPITAL_FILED_REGIX', '^[A-Z]+$', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (23, '2023-08-17 17:10:39.030000', '2023-08-17 17:10:39.030000', 1, '55a17013-6621-4f43-b6a7-ef5b98722b79', 'Default Permission To Link With New Permission ', 112, 'DEFAULT_PERMISSION', '1,2,3,4,5,9', false, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (24, '2023-08-19 12:13:04.290000', '2023-08-19 12:13:04.290000', 1, '319b5f4b-448a-4c88-9851-c99834f16da8', 'Select User Type', 113, 'USER_TYPE', 'USER_TYPE', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (28, '2023-08-19 20:48:42.950000', '2023-08-19 20:48:42.950000', 1, 'a3f47855-72e6-41f4-96ff-e93e241bc9ce', 'UAE Phone Pattern', 114, 'UAE_PHONE_PATTERN', '/^(\+971|0)(50|52|54|55|56|58)\d{7}$/', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (29, '2023-08-19 22:07:59.847000', '2023-08-19 22:07:59.847000', 1, '43f579f7-ac36-4666-89e9-0cf20f86761d', 'Gender', 115, 'GENDER', 'GENDER', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (32, '2023-08-20 18:23:52.228000', '2023-08-20 18:23:52.228000', 1, '123e6885-c605-4199-ac62-1eb833fa42ea', 'Role use to create the user create manger', 116, 'GWY_USER_TYPE', '1,3,4,5,6,7,9', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (33, '2023-08-20 18:25:45.799000', '2023-08-20 18:25:45.799000', 1, '1ab68f87-5ee4-44b0-b89b-942608a32642', 'Role use to create the user agent user', 117, 'GWY_AGENT_USER_TYPE', '8', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (34, '2023-08-20 20:58:15.333000', '2023-08-20 20:58:15.333000', 1, '3d37a704-6c61-44b1-906b-cd57c3899c38', 'Lookup use to create the team with who have manager role', 118, 'GWY_TEAM_MANAGER_ROLE_TYPE', '3,5,6,7,1,4', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (35, '2023-08-20 21:00:54.630000', '2023-08-20 21:00:54.630000', 1, 'beb78474-a22d-4d97-9d9b-ae1eacfd7a8c', 'Lookup help to fetch only the user which is needed to link', 119, 'GWY_TEAM_USER_ROLE_TYPE', '8,9', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (36, '2023-08-26 19:13:13.397000', '2023-08-26 19:13:13.397000', 1, '8ba00f02-7fca-489c-8f04-eafd814bbab6', 'Lead Type (B2B Or B2C)', 120, 'LEAD_TYPE', 'Lead Type', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (39, '2023-08-28 15:20:47.479000', '2023-08-28 15:20:47.479000', 1, '1db7755e-a72f-4152-8695-3d0aaa2715f2', 'Product Type', 121, 'PRODUCT_TYPE', 'Product Type', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (49, '2023-09-04 20:48:27.919000', '2023-09-04 20:48:27.919000', 1, '5df560de-e0ed-485e-9398-e6cfe2979aa2', 'Lead From', 122, 'LEAD_FROM', 'Lead From', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (53, '2023-09-04 20:50:25.468000', '2023-09-04 20:50:25.468000', 1, '4e684446-dbc5-4a69-8013-13958c3895b8', 'Lead Status', 123, 'LEAD_STATUS', 'Lead Status', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (59, '2023-09-04 20:53:55.327000', '2023-09-04 20:53:55.327000', 1, 'df1de954-f5c0-45cb-ab93-7199c4568ee2', 'Lead Resource', 124, 'LEAD_RESOURCE', 'Lead Resource', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (64, '2023-09-08 15:44:38.224000', '2023-09-08 15:44:38.224000', 1, '64706302-971b-4a24-a452-a32d872e624d', 'Age Detail (Adult/Child)', 125, 'AGE', 'Age', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (67, '2023-09-10 15:58:38.551000', '2023-09-10 15:58:38.551000', 1, 'c0edcb1d-0e4a-4902-bff6-c0a56d461c49', 'Select Payment Type', 126, 'PAYMENT_TYPE', 'Payment Type', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (72, '2023-09-11 19:01:46.587000', '2023-09-11 19:01:46.587000', 1, '84e80961-40e7-40db-a466-3fa6b7d82af8', 'Out Bound Product Id which is use in payment process for (B2B and B2C)', 127, 'OUT_BOUND_PRD', '2', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (74, '2023-09-13 16:59:44.386000', '2023-09-13 16:59:44.386000', 1, 'f16e94c2-fd64-42d9-95a1-3b5402b6c3e7', 'Document Type', 128, 'DOCUMENT_TYPE', 'Document Type', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (81, '2023-09-15 18:32:00.580000', '2023-09-15 18:32:00.580000', 1, '79347a99-f8fc-4c68-b754-468a4b03c369', 'Order Status', 129, 'ORDER_STATUS', 'Order Status', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (94, '2023-09-29 20:02:42.618000', '2023-09-29 20:02:42.618000', 1, 'ddb677d2-5aac-46e2-a97e-9f20bc497140', 'Inbound', 130, 'INBOUND', 'Inbound', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (95, '2023-09-29 20:04:26.563000', '2023-09-29 20:04:26.563000', 1, 'e22d3c53-2de3-4f19-8cae-7d5e5801e095', 'Out Bound', 131, 'OUTBOUND', 'Out Bound', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (96, '2023-09-29 20:04:26.565000', '2023-09-29 20:04:26.565000', 1, '659f5d3c-478c-493f-94a5-1c061f10fe0b', 'Ticket', 132, 'TICKETS', 'Ticket', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (97, '2023-09-29 20:04:26.569000', '2023-09-29 20:04:26.569000', 1, '21b499cf-2847-44f2-aced-7d1177cd8e91', 'Umrah', 132, 'UMRAH', 'Umrah', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (128, '2023-10-01 20:25:42.800000', '2023-10-01 20:25:42.800000', 1, 'a4ff2086-caef-43ea-8780-82b28616450e', 'Ledger Transaction Type', 200, 'LEDGER_TRANSACTION_TYPE', 'Ledger Transaction Type', true, 1, 1, null);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (132, '2023-10-01 20:59:28.560000', '2023-10-01 20:59:28.560000', 1, '679f62fb-39d3-4d70-a261-f51bd8da0ee9', 'REFUND_TYPE', 201, 'REFUND_TYPE', 'REFUND_TYPE', true, 1, 1, null);


INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (2, '2023-04-11 19:40:56.389000', '2023-04-11 19:40:56.389000', 1, 'bda61818-148c-44c9-81d3-cf44b0e32b71', 'Inactive', 0, 'INACTIVE', 'In Active', true, 1, 1, 1);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (3, '2023-04-11 19:40:56.389000', '2023-04-11 19:40:56.389000', 1, 'bda61818-148c-44c9-81d3-cf44b0e32b72', 'Active', 1, 'ACTIVE', 'Active', true, 1, 1, 1);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (15, '2023-08-16 18:38:45.570000', '2023-08-16 18:38:45.570000', 1, '7dbc3917-df2e-48ef-8062-d9b2b3d9a731', 'False use to represent the action need to on off', 0, 'FALSE', 'FALSE', true, 1, 1, 14);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (16, '2023-08-16 18:38:45.585000', '2023-08-16 18:38:45.585000', 1, 'c3b20d7f-cc15-49fb-94a7-b5c91aa3b707', 'True use to represent the action needs to on off', 1, 'TRUE', 'TRUE', true, 1, 1, 14);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (20, '2023-08-16 19:25:48.187000', '2023-08-16 19:25:48.187000', 1, 'cf08f793-135f-470f-8083-db70c8eb6dce', 'FORGOT PASSWORD', 0, 'FORGOT_PASS', 'FORGOT PASSWORD', true, 1, 1, 19);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (21, '2023-08-16 19:26:16.693000', '2023-08-16 19:26:16.693000', 1, 'be017a73-62da-4581-922d-0ebd2d657d43', 'RESET PASSWORD', 1, 'RESET_PASSWORD', 'RESET PASSWORD', true, 1, 1, 19);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (25, '2023-08-19 12:13:33.737000', '2023-08-19 12:13:33.737000', 1, '9b21df39-fb7d-45f7-a098-8761c3cd6ffe', 'User', 0, 'USER', 'User', true, 1, 1, 24);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (27, '2023-08-19 13:45:35.658000', '2023-08-19 13:45:35.658000', 1, '4d077011-9305-48ed-b383-ea4c99a8137d', 'New Register Account', 2, 'NEW_REGISTER_ACCOUNT', 'NEW REGISTER ACCOUNT', true, 1, 1, 19);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (37, '2023-08-26 19:13:40.950000', '2023-08-26 19:13:40.950000', 1, '19b29a54-688c-4315-aed6-3ad11e5c38fe', 'B2C', 0, 'B2C', 'B2C', true, 1, 1, 36);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (38, '2023-08-26 19:13:53.744000', '2023-08-26 19:13:53.744000', 1, 'dbff0f54-0409-4ebe-870b-5c6fa337bed2', 'B2B', 1, 'B2B', 'B2B', true, 1, 1, 36);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (40, '2023-08-28 15:22:17.345000', '2023-08-28 15:22:17.345000', 1, 'b49deffe-5ea3-4686-8ecb-fd8a376d01ad', 'Visa setting for 3 days', 0, 'VISA_3_DAYS', '3 Days Visa', true, 1, 1, 39);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (41, '2023-08-28 15:22:45.633000', '2023-08-28 15:22:45.633000', 1, '21b04e88-8e03-45e4-a94e-c3d7d7d1ed9c', 'Visa for 15 days', 1, 'VISA_15_DAYS', '15 Days Visa', true, 1, 1, 39);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (42, '2023-08-28 15:23:39.215000', '2023-08-28 15:23:39.215000', 1, '4e9be158-f720-4e9d-9dc6-fb0d7f31ed13', 'Visa setting for 30 days', 2, 'VISA_30_DAYS', '30 Days Visa', true, 1, 1, 39);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (43, '2023-08-28 15:24:41.274000', '2023-08-28 15:24:41.274000', 1, '4238a325-6a7e-4167-accf-3144bd0d89da', 'Visa setting for 60 days', 3, 'VISA_60_DAYS', '60 Days Visa', true, 1, 1, 39);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (44, '2023-08-28 15:25:59.198000', '2023-08-28 15:25:59.198000', 1, '2f206401-b49e-4c80-9fbf-bebff17e54aa', 'Visa setting for 90 days', 4, 'VISA_90_DAYS', '90 Days Visa', true, 1, 1, 39);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (45, '2023-08-28 15:27:24.321000', '2023-08-28 15:27:24.321000', 1, '7292ab0a-df4b-400e-93da-635f1952a439', 'Visa setting for extension', 5, 'EXTENSION', 'Extension', true, 1, 1, 39);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (46, '2023-08-28 15:27:52.940000', '2023-08-28 15:27:52.940000', 1, 'f5bd0590-e70e-4320-a379-d02200dce061', 'Visa setting for a2a', 6, 'A2A_VISA', 'A2A Visa', true, 1, 1, 39);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (47, '2023-08-28 15:31:41.633000', '2023-08-28 15:31:41.633000', 1, 'e72fa3c4-627b-4673-b3ff-dd5e94e14902', 'Visa settings for b2b', 7, 'B2B_VISA', 'B2B Visa', true, 1, 1, 39);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (48, '2023-08-28 15:32:52.158000', '2023-08-28 15:32:52.158000', 1, '574556b1-49c1-4fc8-8e14-556f343215eb', 'Visa setting for freelancer', 8, 'FREELANCER_VISA', 'Freelancer Visa', true, 1, 1, 39);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (50, '2023-09-04 20:48:51.694000', '2023-09-04 20:48:51.694000', 1, 'c05f221d-1db5-48d4-b9b7-8e941abf116c', 'Self', 0, 'SELF', 'Self', true, 1, 1, 49);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (51, '2023-09-04 20:49:18.710000', '2023-09-04 20:49:18.710000', 1, 'cd7d6539-5608-41bd-b41f-ca1a65397e9e', 'Marketing', 1, 'MARKETING', 'Marketing', true, 1, 1, 49);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (52, '2023-09-04 20:49:39.919000', '2023-09-04 20:49:39.919000', 1, 'cd5b404d-b218-47f5-8f77-1e8eb1fced43', 'Reference', 2, 'REFERENCE', 'Reference', true, 1, 1, 49);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (54, '2023-09-04 20:50:58.005000', '2023-09-04 20:50:58.005000', 1, 'a29f16b1-0339-4171-8551-2e8cc2d70a09', 'Open', 0, 'OPEN', 'Open', true, 1, 1, 53);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (55, '2023-09-04 20:51:14.542000', '2023-09-04 20:51:14.542000', 1, '73b98d36-bcd8-4fa5-9bb5-afe20a2905ed', 'In Process', 1, 'IN_PROCESS', 'In Process', true, 1, 1, 53);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (56, '2023-09-04 20:51:30.107000', '2023-09-04 20:51:30.107000', 1, '258ebad6-89f3-4c4e-9341-51e1f6e92872', 'Converted', 2, 'CONVERTED', 'Converted', true, 1, 1, 53);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (57, '2023-09-04 20:51:57.971000', '2023-09-04 20:51:57.971000', 1, '97988902-64d7-4dba-9436-24ef16cc8e11', 'Closed', 3, 'CLOSED', 'Closed', true, 1, 1, 53);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (58, '2023-09-04 20:52:15.473000', '2023-09-04 20:52:15.473000', 1, '7899cd4c-1fac-4c86-997a-32edba0280d0', 'Fake', 4, 'FAKE', 'Fake', true, 1, 1, 53);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (60, '2023-09-04 20:54:34.496000', '2023-09-04 20:54:34.496000', 1, 'cf5248f8-e5b3-478b-b050-1c4791b3975f', 'Facebook', 0, 'FACEBOOK', 'Facebook', true, 1, 1, 59);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (61, '2023-09-04 20:54:50.185000', '2023-09-04 20:54:50.185000', 1, '8a8bd7ae-3679-441e-84e9-98b301e99ba6', 'Instagram', 1, 'INSTAGRAM', 'Instagram', true, 1, 1, 59);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (62, '2023-09-04 20:55:20.082000', '2023-09-04 20:55:20.082000', 1, '8b307606-9d5f-47fe-8f7e-1c3e4db3e701', 'Tiktok', 2, 'TIKTOK', 'Tiktok', true, 1, 1, 59);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (63, '2023-09-04 20:55:42.409000', '2023-09-04 20:55:42.409000', 1, '1568eb87-a7fc-4f35-ab65-6ca05bcf3af7', 'Google Adds', 3, 'GOOGLE_ADDS', 'Google Adds', true, 1, 1, 59);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (65, '2023-09-08 15:45:04.932000', '2023-09-08 15:45:04.932000', 1, '8840a462-98b7-4288-8674-ac46164a17ba', 'Adult', 0, 'ADULT', 'Adult', true, 1, 1, 64);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (66, '2023-09-08 15:45:28.946000', '2023-09-08 15:45:28.946000', 1, 'ca55d794-9ec7-4ba3-8853-dc12c4e6bdf3', 'Child', 1, 'CHILD', 'Child', true, 1, 1, 64);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (68, '2023-09-10 15:59:03.470000', '2023-09-10 15:59:03.470000', 1, '022e714f-8309-4084-84be-11ba0a796b75', 'Bank Transfer', 0, 'BANK_TRANSFER', 'Bank Transfer', true, 1, 1, 67);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (69, '2023-09-10 15:59:34.181000', '2023-09-10 15:59:34.181000', 1, '2578a6c8-6715-4f23-8bd0-9dcbcfff1236', 'CashIn Office', 1, 'CASH_IN_OFFICE', 'CashIn Office', true, 1, 1, 67);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (70, '2023-09-10 16:00:11.002000', '2023-09-10 16:00:11.002000', 1, '0edba63d-7a13-4785-a1bc-2df9b47fe16c', 'BNPL BT', 2, 'BNPL_BT', 'BNPL BT', true, 1, 1, 67);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (71, '2023-09-10 16:02:03.306000', '2023-09-10 16:02:03.306000', 1, '0581927b-69e6-4a00-bbd1-f6e64fca0074', 'Credit', 3, 'CREDIT', 'CREDIT', true, 1, 1, 67);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (73, '2023-09-11 20:41:07.236000', '2023-09-11 20:41:07.236000', 1, '8e0b688f-8588-4388-9a90-51fa065959bc', 'NEW ORDER POSTED', 3, 'NEW_ORDER_POSTED', 'NEW ORDER POSTED', true, 1, 1, 19);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (75, '2023-09-13 17:01:02.648000', '2023-09-13 17:01:02.648000', 1, 'df1d828b-d637-4008-8dc4-8c683689cda1', 'CNIC', 2, 'CNIC', 'CNIC', false, 1, 1, 74);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (76, '2023-09-13 17:01:02.650000', '2023-09-13 17:01:02.650000', 1, 'f31dca56-d7b4-496a-90da-182c53b0bd91', 'SECURITY_CHECK', 3, 'SECURITY_CHECK', 'SECURITY_CHECK', false, 1, 1, 74);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (77, '2023-09-13 17:01:02.651000', '2023-09-13 17:01:02.651000', 1, 'dd17f9df-1e38-4d96-b425-ab9cd79dba2b', 'PASSPORT_SIZE_PIC', 0, 'PASSPORT_SIZE_PIC', 'PASSPORT_SIZE_PIC', false, 1, 1, 74);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (78, '2023-09-13 17:01:02.653000', '2023-09-13 17:01:02.653000', 1, 'a07fc14c-ab4c-42e1-88b0-6e922850e77f', 'PASSPORT', 1, 'PASSPORT', 'PASSPORT', false, 1, 1, 74);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (79, '2023-09-13 17:01:02.655000', '2023-09-13 17:01:02.655000', 1, 'ed4ec518-23f9-4592-a6c6-2d102a737cd5', 'PAYMENT_SLIP', 5, 'PAYMENT_SLIP', 'PAYMENT_SLIP', false, 1, 1, 74);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (80, '2023-09-13 17:01:02.656000', '2023-09-13 17:01:02.656000', 1, '2d6c635c-f78a-4291-a28a-dc9828227471', 'OTHERS', 4, 'OTHERS', 'OTHERS', false, 1, 1, 74);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (82, '2023-09-15 18:37:05.259000', '2023-09-15 18:37:05.259000', 1, '3cea3a1a-aa44-4988-9022-0ae81c639cca', 'Created', 0, 'CREATED', 'Created', true, 1, 1, 81);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (83, '2023-09-15 18:37:05.259000', '2023-09-15 18:37:05.259000', 1, '6ecb8b32-10c9-4456-940d-ce2285410417', 'Posted', 1, 'POSTED', 'Posted', true, 1, 1, 81);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (31, '2023-08-19 22:09:10.362000', '2023-08-19 22:09:10.362000', 1, '76d8cbc1-e77b-4f41-8ceb-507cb3d0e2c7', 'F -> Female', 1, 'FEMAIL', 'F', true, 1, 1, 29);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (26, '2023-08-19 12:13:54.337000', '2023-08-19 12:13:54.337000', 1, 'b7c56081-9ca8-48a8-966f-9fde5e2b0523', 'Partner', 1, 'PARTNER', 'Partner', true, 1, 1, 24);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (84, '2023-09-15 18:37:05.259000', '2023-09-15 18:37:05.259000', 1, '1aef3a51-66dd-4a4e-a158-417a98bbcf06', 'Approved By Operation', 2, 'APPROVED_BY_OPERATION', 'Approved By Operation', true, 1, 1, 81);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (85, '2023-09-15 18:37:05.273000', '2023-09-15 18:37:05.273000', 1, '47f22af8-2f0d-423e-b6d8-8c1f7ebcd4a1', 'Rejected By Operation', 3, 'REJECTED_BY_OPERATION', 'Rejected By Operation', true, 1, 1, 81);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (87, '2023-09-15 18:37:05.276000', '2023-09-15 18:37:05.276000', 1, '5fa867ac-0680-4423-8790-3b1a81ae2fde', 'Appr By Fancnce', 5, 'APPROVED_BY_FINANCE', 'Appr By Fancnce', true, 1, 1, 81);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (88, '2023-09-15 18:37:05.276000', '2023-09-15 18:37:05.276000', 1, 'e562457c-dacd-4c27-a3a0-e4b22872d009', 'Send To Immigration', 6, 'SENT_TO_IMMIGRATION', 'Send To Immigration', true, 1, 1, 81);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (89, '2023-09-15 18:37:05.276000', '2023-09-15 18:37:05.276000', 1, '80d377ca-5d12-40e0-9226-9727fd6e228a', 'Visa Recevied', 7, 'VISA_RECEIVED', 'Visa Recevied', true, 1, 1, 81);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (90, '2023-09-15 18:37:05.276000', '2023-09-15 18:37:05.276000', 1, '2ecb3a48-0c07-4f48-8042-58393603c920', 'Visa Approved', 8, 'VISA_APPROVED', 'Visa Approved', true, 1, 1, 81);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (91, '2023-09-15 18:37:05.276000', '2023-09-15 18:37:05.276000', 1, '7b618aad-609d-47f8-8246-489c4ac2a9e0', 'Visa Rejected', 9, 'VISA_REJECTED', 'Visa Rejected', true, 1, 1, 81);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (92, '2023-09-15 19:05:37.178000', '2023-09-15 19:05:37.178000', 1, 'b19a1c8c-091d-4555-b2f3-3c93e52423b2', 'Posted', 5, 'LEAD_POSTED', 'Posted', true, 1, 1, 53);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (98, '2023-09-29 20:13:53.996000', '2023-09-29 20:13:53.996000', 1, '01615bac-6cbb-4066-b903-02db92df3bc1', 'Complete Visit Visa', 25, 'COMPLETE_VISIT_VISA', 'Complete Visit Visa', true, 1, 1, 95);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (99, '2023-09-29 20:13:54.006000', '2023-09-29 20:13:54.006000', 1, '2ace0e37-2dac-4546-9ec3-d3a6672d9592', 'Appointment Only', 26, 'APPOINTMENT_ONLY', 'Appointment Only', true, 1, 1, 95);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (100, '2023-09-29 20:13:54.010000', '2023-09-29 20:13:54.010000', 1, 'e6e9fcc7-fab7-409f-a1de-5bedb6dec411', 'Documentation Only', 27, 'DOCUMENTATION_ONLY', 'Documentation Only', true, 1, 1, 95);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (101, '2023-09-29 20:13:54.013000', '2023-09-29 20:13:54.013000', 1, '8a3bba25-285c-458e-963b-d3ad57e97cc8', 'Appointment Door Step ', 28, 'APPOINTMENT_DOOR_STEP', 'Appointment Door Step ', true, 1, 1, 95);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (102, '2023-09-29 20:13:54.015000', '2023-09-29 20:13:54.015000', 1, '4982a9fb-98c8-4df2-88b6-fb780cd7598c', 'Urgent Appointment', 29, 'URGENT_APPOINTMENT', 'Urgent Appointment', true, 1, 1, 95);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (103, '2023-09-29 20:17:22.249000', '2023-09-29 20:17:22.249000', 1, 'd1b365f3-d672-4f05-bce0-69c675061d95', 'Outside Person Visa Services', 0, 'OUTSIDE_PERSON_VISA_SERVICES', 'Outside Person Visa Services', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (104, '2023-09-29 20:17:22.254000', '2023-09-29 20:17:22.254000', 1, '39c4dd0b-4a6b-4c57-afef-c832ec061dc1', '96 hours', 1, '96_HOURS', '96 hours', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (105, '2023-09-29 20:17:22.256000', '2023-09-29 20:17:22.256000', 1, 'e0a300ae-03a6-4ea6-8db7-302238a19646', '30 Days SE', 2, '30_DAYS_SE', '30 Days SE', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (106, '2023-09-29 20:17:22.259000', '2023-09-29 20:17:22.259000', 1, '490aeef9-786e-46cc-94d2-8ca0c17ee627', '60 Days SE', 3, '60_DAYS_SE', '60 Days SE', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (107, '2023-09-29 20:17:22.261000', '2023-09-29 20:17:22.261000', 1, '030d8ba0-1044-4a94-8712-ba180947c565', '90 Days SE', 4, '90_DAYS_SE', '90 Days SE', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (108, '2023-09-29 20:17:22.263000', '2023-09-29 20:17:22.263000', 1, 'ba06969b-0665-48cf-8c33-85019dc34570', '30 Days ME', 5, '30_DAYS_ME', '30 Days ME', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (109, '2023-09-29 20:17:22.265000', '2023-09-29 20:17:22.265000', 1, 'ab6c5a0a-82a9-4da9-b510-aca9a1323220', '60 Days ME', 6, '60_DAYS_ME', '60 Days ME', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (110, '2023-09-29 20:17:22.267000', '2023-09-29 20:17:22.267000', 1, '8043c5f4-0028-4d99-b867-4bbf9a0ab3ec', '30 Days Extension', 7, '30_DAYS_EXTENSION', '30 Days Extension', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (111, '2023-09-29 20:17:22.270000', '2023-09-29 20:17:22.270000', 1, '379d0bd7-395a-4ebf-a056-594bbfca2270', 'A2A 30 Days SE ', 8, 'A2A_30_DAYS_SE', 'A2A 30 Days SE ', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (112, '2023-09-29 20:17:22.272000', '2023-09-29 20:17:22.272000', 1, '31b15ef3-7ec2-4d36-afe1-631a183126ef', 'A2A 60 Days SE ', 9, 'A2A_60_DAYS_SE', 'A2A 60 Days SE ', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (113, '2023-09-29 20:17:22.274000', '2023-09-29 20:17:22.274000', 1, '1033a6b8-1076-47fc-b778-dee623d57443', 'A2A 90 Days SE ', 10, 'A2A_90_DAYS_SE', 'A2A 90 Days SE ', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (114, '2023-09-29 20:17:22.276000', '2023-09-29 20:17:22.276000', 1, '68bb513e-74f4-4acf-b4a2-d81f9c8aff37', 'A2A 30 Days ME ', 11, 'A2A_30_DAYS_ME', 'A2A 30 Days ME ', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (115, '2023-09-29 20:17:22.278000', '2023-09-29 20:17:22.278000', 1, '818d62ec-1149-4689-bfd7-fe307bc74566', 'A2A 60 Days ME ', 12, 'A2A_60_DAYS_ME', 'A2A 60 Days ME ', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (116, '2023-09-29 20:17:22.280000', '2023-09-29 20:17:22.280000', 1, '9327f9c1-2b92-4beb-a329-c9605866f278', 'Freelance Visa', 13, 'FREELANCE_VISA', 'Freelance Visa', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (117, '2023-09-29 20:17:22.281000', '2023-09-29 20:17:22.281000', 1, '1e7b1aa3-43e4-47c2-8324-e2545777d4ed', 'Family Sponsorship Visa', 14, 'FAMILY_SPONSORSHIP_VISA', 'Family Sponsorship Visa', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (118, '2023-09-29 20:23:56.276000', '2023-09-29 20:23:56.276000', 1, '2d2d8a09-0ec8-4a48-b1b0-cdd2f1ed33df', 'Ticket', 20, 'TICKET', 'Ticket', true, 1, 1, 96);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (119, '2023-09-29 20:23:56.280000', '2023-09-29 20:23:56.280000', 1, '57b48df3-1afe-485b-b6ce-7dd09335da52', 'Dummy Ticket', 21, 'DUMMY_TICKET', 'Dummy Ticket', true, 1, 1, 96);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (120, '2023-09-29 20:23:56.282000', '2023-09-29 20:23:56.282000', 1, 'f615ad3c-ec61-4cd6-8dd2-7aedf39d4fbf', 'Hotel Booking', 22, 'HOTEL_BOOKING', 'Hotel Booking', true, 1, 1, 96);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (121, '2023-09-29 20:23:56.285000', '2023-09-29 20:23:56.285000', 1, '9dec08b7-015b-4a35-825f-7138c5537b33', 'Insurance', 23, 'INSURANCE', 'Insurance', true, 1, 1, 96);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (122, '2023-09-29 20:23:56.287000', '2023-09-29 20:23:56.287000', 1, '53e77c82-3f81-448a-b6a5-ef91f9268265', 'Excursion Services', 24, 'EXCURSION_SERVICES', 'Excursion Services', true, 1, 1, 96);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (123, '2023-09-29 20:25:44.280000', '2023-09-29 20:25:44.280000', 1, '518f8d24-3265-4561-ac61-23ec79034e49', '1M Umrah', 15, 'ONEM_UMRAH', '1M Umrah', true, 1, 1, 97);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (124, '2023-09-29 20:25:44.282000', '2023-09-29 20:25:44.282000', 1, '3bb45315-4577-43c1-b2f8-ed19a7e26de3', '2M Umrah', 16, 'TWOM_UMRAH', '2M Umrah', true, 1, 1, 97);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (125, '2023-09-29 20:25:44.283000', '2023-09-29 20:25:44.283000', 1, '2e1584bc-ebca-41c3-af3f-ae62bd3c4fa5', '1M Umrah CP', 17, 'ONEM_UMRAH_CP', '1M Umrah CP', true, 1, 1, 97);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (126, '2023-09-29 20:25:44.285000', '2023-09-29 20:25:44.285000', 1, '8bb4acaa-7a3e-48f1-a87d-54de98814ceb', '2M Imrah CP', 18, 'TWOM_IMRAH_CP', '2M Imrah CP', true, 1, 1, 97);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (127, '2023-09-29 20:25:44.287000', '2023-09-29 20:25:44.287000', 1, '60524937-d41d-4cd2-b15d-1d0caf0ff6c1', '1 Year Saudia ME', 19, 'ONE_YEAR_SAUDIA_ME', '1 Year Saudia ME', true, 1, 1, 97);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (129, '2023-10-01 20:26:12.302000', '2023-10-01 20:26:12.302000', 1, '61c73a10-4f2c-4413-a316-644eaf2f230e', 'INVOICE', 0, 'INVOICE', 'INVOICE', false, 1, 1, 128);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (131, '2023-10-01 20:26:42.174000', '2023-10-01 20:26:42.174000', 1, '27a4df0a-4da7-4de5-8154-5d10fb4418c3', 'REFUNDED', 2, 'REFUNDED', 'REFUNDED', false, 1, 1, 128);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (130, '2023-10-01 20:26:23.006000', '2023-10-01 20:26:23.006000', 1, '610a14cc-bf0a-4eb7-9698-8bec900249cb', 'PARTIALLY_PAYMENT', 1, 'PARTIALLY_PAYMENT', 'PARTIALLY_PAYMENT', false, 1, 1, 128);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (134, '2023-10-01 21:00:06.070000', '2023-10-01 21:00:06.070000', 1, '9d64bfb7-e2f9-4b88-9422-a369e6b4c1f9', 'FULL_AMOUNT', 1, 'FULL_AMOUNT', 'Full Amount', false, 1, 1, 132);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (136, '2023-10-04 18:36:51.197000', '2023-10-04 18:36:51.197000', 1, '983c8890-b696-4dbb-aa51-030200729c65', 'BA 2 AB 30 days', 30, 'BA_2_AB_30_DAYS', 'BA 2 AB 30 days', false, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (137, '2023-10-04 18:37:09.666000', '2023-10-04 18:37:09.666000', 1, 'a5506f4e-84ec-4c76-8991-bfdc662cefec', 'BA 2 AB 60 days', 31, 'BA_2_AB_60_DAYS', 'BA 2 AB 60 days', false, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (138, '2023-10-04 18:37:28.578000', '2023-10-04 18:37:28.578000', 1, '6176d53b-6a78-47ff-befa-59941e0fe1df', 'BA 2 AB 90 days', 32, 'BA_2_AB_90_DAYS', 'BA 2 AB 90 days', false, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (30, '2023-08-19 22:08:50.503000', '2023-08-19 22:08:50.503000', 1, '21412817-fb7c-4455-8923-843de2b35c98', 'M -> Male', 0, 'MALE', 'M', true, 1, 1, 29);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (139, '2023-10-09 19:29:05.105000', '2023-10-09 19:29:05.105000', 1, '7bd3905f-8894-4719-9be2-2bda0cbd2e83', 'Order Action Email', 4, 'ORDER_ACTION', 'ORDER ACTION', true, 1, 1, 19);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (135, '2023-10-01 21:00:20.535000', '2023-10-01 21:00:20.535000', 1, '6b913a12-40d7-4e75-bd37-baa7ee65fcce', 'CREDIT_NOTE', 2, 'CREDIT_NOTE', 'Credit Note', false, 1, 1, 132);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (86, '2023-09-15 18:37:05.274000', '2023-09-15 18:37:05.274000', 1, '1d6fe145-51b4-4a1b-a5e0-036f5bdf9712', 'Waiting Fancnce Approval', 4, 'WAITING_FINANCE_APPROVAL', 'Waiting Finance Approval', true, 1, 1, 81);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (141, '2023-10-30 20:55:07.929000', '2023-10-30 20:55:07.929000', 1, '5f2bffb7-231b-484e-8ae2-f237cbc6afdb', 'B To B 60 Days', 34, 'B_TO_B_60_DAYS', 'B To B 60 Days', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (142, '2023-10-30 20:55:24.706000', '2023-10-30 20:55:24.706000', 1, '37565447-b8d2-4b07-b3e3-dd00277db426', 'B To B 90 Days', 35, 'B_TO_B_90_DAYS', 'B To B 90 Days', true, 1, 1, 94);
INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code, lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id) VALUES (140, '2023-10-30 20:54:46.093000', '2023-10-30 20:54:46.093000', 1, 'fe54fe15-3e14-4090-b512-52ce13a23101', 'B To B 30 Days', 33, 'B_TO_B_30_DAYS', 'B To B 30 Days', true, 1, 1, 94);




INSERT INTO public.gate_wayz_global_variable (id, date_created, date_updated, status, uuid, adjustment, bnpl_percentage, vat, created_by_id, updated_by_id) VALUES (6, '2023-09-12 00:14:07.371000', '2023-09-12 00:14:07.371000', 1, '061213c2-8340-4b7e-bfb3-e40582c7916e', 40, 7.5, 5, 1, null);



INSERT INTO public.gate_wayz_team (id, date_created, date_updated, status, uuid, team_name, created_by_id, updated_by_id, team_manager_id) VALUES (1, '2023-08-20 23:30:36.855000', '2023-08-20 23:30:36.855000', 1, 'cd83c0b2-5b89-4ce0-afce-7e7fc3fe7217', 'GateWayz', 1, null, 1);

INSERT INTO public.gate_wayz_user_team (id, date_created, created_by_id, team_id, user_id) VALUES (1, '2023-09-19 23:32:24.938000', 1, 1, 1);



update gate_wayz_destination set name = 'Sharjah' where id = 3;

INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (30, '2023-09-27 03:35:25.424000', '2023-09-06 03:35:27.424000', 1, '469bcbf3-2111-4c6e-a5ce-dfs3kjd7dsa8', 'MANAGE_LEDGER', 'MANAGE_LEDGER', 1, 1);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (31, '2023-09-27 03:35:25.424000', '2023-09-06 03:35:27.424000', 1, '469bcbf3-2111-4c6e-a5ce-dfsdg3s7dsa8', 'MANAGE_LEDGER_PAGE', 'MANAGE_LEDGER_PAGE', 1, 1);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (30, '2023-09-27 02:23:56.439000', 1, 30, 8);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (31, '2023-09-27 02:23:56.439000', 1, 31, 8);

--Lookup_Data NOTE only add new records

ALTER SEQUENCE gate_wayz_role_permission_id_seq RESTART WITH 1000;
ALTER SEQUENCE gate_wayz_lookup_data_lookup_id_seq RESTART WITH 1000;
ALTER SEQUENCE gate_wayz_global_variable_id_seq RESTART WITH 2;
ALTER SEQUENCE gate_wayz_template_template_id_seq RESTART WITH 10;
ALTER SEQUENCE gate_wayz_user_id_seq RESTART WITH 1000;
ALTER SEQUENCE gate_wayz_user_role_id_seq RESTART WITH 1000;
ALTER SEQUENCE gate_wayz_role_id_seq RESTART WITH 1000;
ALTER SEQUENCE gate_wayz_team_id_seq RESTART WITH 1000;
ALTER SEQUENCE gate_wayz_user_team_id_seq RESTART WITH 1000;


update gate_wayz_lookup_data set description = 'Sent to Operation', lookup_value = 'Sent to Operation', lookup_type = 'SENT_TO_OPERATION' where lookup_id = 83;



INSERT INTO public.gate_wayz_product (id, date_created, date_updated, status, uuid, description, lead_type, price, processing_time, product_name, created_by_id, updated_by_id, selling_price, selling_price_open) VALUES (1, '2023-09-08 20:30:38.979000', '2023-10-28 16:33:10.346000', 1, 'c68b085e-7247-42cd-bc74-fe7a59a28732', '', 0, null, '48', 'INBOUND', null, 1, null, false);
INSERT INTO public.gate_wayz_product (id, date_created, date_updated, status, uuid, description, lead_type, price, processing_time, product_name, created_by_id, updated_by_id, selling_price, selling_price_open) VALUES (3, '2023-09-16 20:07:53.052000', '2023-10-28 16:33:32.624000', 1, '79566755-7664-4b06-99f9-2cb538af3ed9', '', 0, null, '50', 'TICKETS', 1, 1, null, true);
INSERT INTO public.gate_wayz_product (id, date_created, date_updated, status, uuid, description, lead_type, price, processing_time, product_name, created_by_id, updated_by_id, selling_price, selling_price_open) VALUES (4, '2023-09-08 20:34:33.726000', '2023-10-28 16:33:43.409000', 1, '6e29a516-84b3-4ec4-b7a6-464043d54d7a', '', 0, null, '48', 'UMRAH', 1, 1, null, false);
INSERT INTO public.gate_wayz_product (id, date_created, date_updated, status, uuid, description, lead_type, price, processing_time, product_name, created_by_id, updated_by_id, selling_price, selling_price_open) VALUES (2, '2023-09-08 20:26:40.302000', '2023-10-28 16:34:35.545000', 1, '6fedcf44-a334-4b30-8b09-a578608c4dc3', '', 0, null, '42', 'OUTBOUND', null, 1, null, false);


INSERT INTO public.gate_wayz_product_team (id, gate_wayz_product_id, gate_wayz_team_id) VALUES (51, 1, 1);
INSERT INTO public.gate_wayz_product_team (id, gate_wayz_product_id, gate_wayz_team_id) VALUES (54, 3, 1);
INSERT INTO public.gate_wayz_product_team (id, gate_wayz_product_id, gate_wayz_team_id) VALUES (56, 4, 1);
INSERT INTO public.gate_wayz_product_team (id, gate_wayz_product_id, gate_wayz_team_id) VALUES (59, 2, 1);


update gate_wayz_user set credit_debit_amt = 5000, is_credit = true where id = 1;




INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (143, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134gs3d',
        'Order Amendment Type', 130, 'ORDER_AMENDMENT_TYPE', 'Order Amendment Type', true, 1, 1, null);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (144, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134gle8',
        'Fully Refunded', 0, 'FULLY_REFUNDED', 'Fully Refunded', true, 1, 1, 143);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (145, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134jki7',
        'Order Amendment', 1, 'ORDER_AMENDMENT', 'Order Amendment', true, 1, 1, 143);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (146, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134s36j',
        'Amount Amendment', 2, 'AMOUNT_AMENDMENT', 'Amount Amendment', true, 1, 1, 143);



INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (32, current_timestamp, current_timestamp, 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7ldk4', 'MANAGE_ORDER_AMENDMENT', 'MANAGE_ORDER_AMENDMENT', 1, 1);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (32, '2023-09-06 02:23:56.439000', 1, 32, 8);

INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (33, current_timestamp, current_timestamp, 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7mnd7', 'MANAGE_ORDER_AMENDMENT_PAGE', 'MANAGE_ORDER_AMENDMENT_PAGE', 1, 1);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (33, '2023-09-06 02:23:56.439000', 1, 33, 8);