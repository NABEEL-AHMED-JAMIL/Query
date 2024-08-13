GRANT ALL PRIVILEGES  ON admin.EMPLOYEES 

GRANT SELECT ON admin.EMPLOYEES 


GRANT SELECT ON admin.EMPLOYEES TO system;





SELECT username FROM dba_users WHERE username = 'system';