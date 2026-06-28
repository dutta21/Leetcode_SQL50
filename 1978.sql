select employee_id 
from Employees
where salary<30000 and manager_id not in (select distinct employee_id
from Employees
where employee_id is not null)
order by employee_id asc;