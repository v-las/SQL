-- 1
select employee_name, monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id;

-- 2
select employee_name, monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id 
where monthly_salary < 2000;

-- 3
select employee_name, monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where employee_name is null;

-- 4
select employee_name, monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where employee_name is null
and monthly_salary < 2000;

-- 5
select employee_name, monthly_salary 
from employees
left join employees_salary
on employees.id = employees_salary.employee_id
where monthly_salary is null;

-- 6
select employee_name, role_name
from roles_employees
full join employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id;

-- 7
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Java %';

-- 8
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Python %';

-- 9
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%QA%';

-- 10
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Manual QA%';

-- 11
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Automation QA%';

-- 12
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id 
where role_name like '%Junior%';

-- 13
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id 
where role_name like '%Middle%';

-- 14
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id 
where role_name like '%Senior%';

-- 15
select monthly_salary, role_name
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Java %';

-- 16
select monthly_salary, role_name
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Python%';

-- 17
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Junior Python%';

-- 18
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Middle JavaS%';

-- 19
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Senior%' and role_name like'%Java%';

-- 20
select monthly_salary
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Junior%' and role_name like'%QA%';

-- 21
select avg(monthly_salary)
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Junior%';

-- 22
select sum(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%JavaS%';

-- 23
select min(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%QA%';

-- 24
select max(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%QA%';

-- 25
select count(employee_name)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%QA%';

-- 26
select count(employee_name)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Middle%';

-- 27
select count(employee_name)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%developer%';

-- 28
select sum(monthly_salary)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%developer%';

-- 29
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
order by employee_name;

-- 30
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
where monthly_salary < 2300
order by monthly_salary;

-- 32
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;
