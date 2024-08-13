create or replace function empSalaryDepost(id int, new_salary  decimal(10, 0))
returns table (emp_id int, emp_name varchar, message text) as
$$
declare
	old_salary decimal(10, 0);
begin
	select salary into old_salary from employees where employee_id = id;
	update employees set salary = new_salary where employee_id = id; 
	INSERT INTO public.salary_log (log_id, employee_id, old_salary, new_salary, log_date)
	VALUES(nextval('log_id_seq'::regclass), id, old_salary, new_salary, CURRENT_DATE);
	return query select e.emp_id, e.emp_name, 'New Salary Added ' || salary || ' Old Salary ' || old_salary::text as message 
		from getemploybyid(id) as e;
end;
$$ language plpgsql;


drop function empSalaryDepost

select * from empSalaryDepost(1, 2300);

select * from salary_log e 



