--Order Amendment Module

update gate_wayz_order set is_amended_order = false;

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




---TOP UP--



INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (147, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce813lkd2',
        'TopUp Mode', 131, 'TOP_UP_MODE', 'TopUp Mode', true, 1, 1, null);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (148, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134lki3',
        'Bank Transfer', 0, 'BANK_TRANSFER_TOPUP', 'Bank Transfer', true, 1, 1, 147);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (149, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134345e',
        'Cash', 1, 'CAHS', 'Cash', true, 1, 1, 147);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (150, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134lkdk',
        'Other', 2, 'OTHER', 'Other', true, 1, 1, 147);


INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (151, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134mkd2',
        'TopUp', 3, 'TOP_UP', 'TopUp', true, 1, 1, 128);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (152, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134ls74',
        'Fine Type', 4, 'FINE_TYPE', 'Fine Type', true, 1, 1, 128);

INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (34, current_timestamp, current_timestamp, 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7loe8', 'MANAGE_TOP_UP', 'MANAGE_TOP_UP', 1, 1);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (34, current_timestamp, 1, 34, 8);

INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (35, current_timestamp, current_timestamp, 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7iue7', 'MANAGE_TOP_UP_PAGE', 'MANAGE_TOP_UP_PAGE', 1, 1);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (35, current_timestamp , 1, 35, 8);

INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (36, current_timestamp, current_timestamp, 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7mmn4', 'MANAGE_TOP_UP_LEDGER_PAGE', 'MANAGE_TOP_UP_LEDGER_PAGE', 1, 1);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (36, current_timestamp , 1, 36, 8);


--SECURiTY--

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (153, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134llpo',
        'Security Refund Type', 132, 'SECURITY_REFUND_TYPE', 'Security Refund Type', true, 1, 1, null);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (154, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134ddew',
        'Fully Security Amount', 0, 'FULL_SECURITY_AMOUNT', 'Fully Security Amount', true, 1, 1, 153);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (155, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce813498ei',
        'Any Payment', 1, 'ANY_PAYMENT', 'Any Payment', true, 1, 1, 153);






INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (156, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134lpoi',
        'Fine Type', 132, 'FINE_TYPE_P', 'Fine Type', true, 1, 1, null);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (157, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134qwer',
        'Deportation', 0, 'DEPORTATION', 'Deportation', true, 1, 1, 156);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (158, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134nckd',
        'Overstay', 1, 'OVERSTAY', 'Overstay', true, 1, 1, 156);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (159, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134posh',
        'Absonding', 1, 'ABSONDING', 'Absonding', true, 1, 1, 156);

INSERT INTO public.gate_wayz_lookup_data (lookup_id, date_created, date_updated, status, uuid, description, lookup_code,
                                          lookup_type, lookup_value, ui_lookup, created_by_id, updated_by_id, parent_lookup_id)
VALUES (160, current_timestamp , current_timestamp, 1, 'fe34bdf1-9e2b-4b42-9904-a4ce8134873e',
        'Other', 1, 'OTHER_FINE', 'Other', true, 1, 1, 156);


INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (37, current_timestamp, current_timestamp, 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7l412', 'MANAGE_SECURITY_LEDGER', 'MANAGE_SECURITY_LEDGER', 1, 1);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (37, current_timestamp , 1, 37, 8);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (38, current_timestamp, current_timestamp, 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7kdnv', 'MANAGE_LEDGER_FINE', 'MANAGE_LEDGER_FINE', 1, 1);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (38, current_timestamp , 1, 38, 8);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (39, current_timestamp, current_timestamp, 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7atye', 'MANAGE_SECURITY_LEDGER_PAGE', 'MANAGE_SECURITY_LEDGER_PAGE', 1, 1);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (39, current_timestamp , 1, 39, 8);
INSERT INTO public.gate_wayz_permission (id, date_created, date_updated, status, uuid, description, name, created_by_id, updated_by_id) VALUES (40, current_timestamp, current_timestamp, 1, '469bcbf3-2111-4c6e-a5ce-8374kjd7oiqw', 'MANAGE_LEDGER_FINE_PAGE', 'MANAGE_LEDGER_FINE_PAGE', 1, 1);
INSERT INTO public.gate_wayz_role_permission (id, date_created, created_by_id, permission_id, role_id) VALUES (40, current_timestamp , 1, 40, 8);
