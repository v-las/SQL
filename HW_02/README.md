### SQL HomeWork 2. Joins
```sh
Подключится к 
Host: 159.69.151.133
Port: 5056
DB: qa_db_2
User: user_22_x
Pass: *****
```
---
1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
```sh
select employee_name, monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id
;
```
employee_name | monthly_salary
 --- | ---
Dmitry | 2300
Elena | 1500
Alex | 1000
Victor | 1100
Elena | 2100
Anna | 1400
Milana | 1500
Olga | 1700
Sergey | 1750
Vadim	 | 1750
Anton	 | 1850
James	 | 1850
Luna	 | 2000
Aria	 | 2200
Valentina	 | 2800
Henry	 | 4100
Oliver	 | 700
David	 | 1000
Luke	 | 900
Leo	 | 1100
Scarlett	 | 1200
Penelope	 | 1600
Nora	 | 1620
Lily	 | 2350
*Всего* | *24*
2. Вывести всех работников у которых ЗП меньше 2000.
```sh
select employee_name, monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id 
where employees_salary.monthly_salary < 2000;
```
employee_name|monthly_salary|
-------------+--------------+
Elena        |          1500|
Alex         |          1000|
Victor       |          1100|
Anna         |          1400|
Milana       |          1500|
Olga         |          1700|
Sergey       |          1750|
Vadim        |          1750|
Anton        |          1850|
James        |          1850|
Oliver       |           700|
David        |          1000|
Luke         |           900|
Leo          |          1100|
Scarlett     |          1200|
Penelope     |          1600|
Nora         |          1620|
*Всего* | *17*
3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```sh
select employees_salary.monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where employees.employee_name is null;
```

*Всего* | **
4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```sh
select employees_salary.monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where employees.employee_name is null
and employees_salary.monthly_salary < 2000;
```

*Всего* | **
5. Найти всех работников кому не начислена ЗП.
```sh
select employees.employee_name, employees_salary.monthly_salary 
from employees
left join employees_salary
on employees.id = employees_salary.employee_id
where employees_salary.monthly_salary is null;
```

*Всего* | **
6. Вывести всех работников с названиями их должности.
```sh
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id;
```

*Всего* | **
7. Вывести имена и должность только Java разработчиков.
```sh
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%Java %'
;
```

*Всего* | **
8. Вывести имена и должность только Python разработчиков.
```sh
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%Python %'
;
```

*Всего* | **
9. Вывести имена и должность всех QA инженеров.
```sh
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%QA%'
;
```

*Всего* | **
10. Вывести имена и должность ручных QA инженеров.
```sh
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%Manual QA%'
;
```

*Всего* | **
11. Вывести имена и должность автоматизаторов QA
```sh
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id
where role_name like '%Automation QA%'
;
```

*Всего* | **
12. Вывести имена и зарплаты Junior специалистов
```sh
select employee_name, monthly_salary
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id 
where role_name like '%Junior%'
;
```

*Всего* | **
13. Вывести имена и зарплаты Middle специалистов
```sh
select employee_name, monthly_salary
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id 
where role_name like '%Middle%'
;
```

*Всего* | **
14. Вывести имена и зарплаты Senior специалистов
```sh
select employee_name, monthly_salary
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id 
where role_name like '%Senior%'
;
```

*Всего* | **
15. Вывести зарплаты Java разработчиков
```sh
select monthly_salary, role_name
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Java %'
;
```

*Всего* | **
16. Вывести зарплаты Python разработчиков
```sh
select monthly_salary, role_name
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Python%'
;
```

*Всего* | **
17. Вывести имена и зарплаты Junior Python разработчиков
```sh
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Junior Python%'
;
```

*Всего* | **
18. Вывести имена и зарплаты Middle JS разработчиков
```sh
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Middle JavaS%'
;
```

*Всего* | **
19. Вывести имена и зарплаты Senior Java разработчиков
```sh
select employee_name, monthly_salary
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Middle%' and role_name like'%JavaS%'
;
```

*Всего* | **
20. Вывести зарплаты Junior QA инженеров
```sh
select monthly_salary
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Junior%' and role_name like'%QA%'
;
```

*Всего* | **
21. Вывести среднюю зарплату всех Junior специалистов
```sh
select avg(monthly_salary)
from employees
join employees_salary
on employees_salary.employee_id = employees.id
join roles_employees
on roles_employees.employee_id = employees.id
join roles
on role_id = roles.id
where role_name like '%Junior%'
;
```

*Всего* | **
22. Вывести сумму зарплат JS разработчиков
```sh
select sum(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%JavaS%'
;
```

*Всего* | **
23. Вывести минимальную ЗП QA инженеров
```sh
select min(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%QA%'
;
```

*Всего* | **
24. Вывести максимальную ЗП QA инженеров
```sh
select max(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%QA%'
;
```

*Всего* | **
25. Вывести количество QA инженеров
```sh
select count(employee_name)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%QA%'
;
```

*Всего* | **
26. Вывести количество Middle специалистов.
```sh
select count(employee_name)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%Middle%'
;
```

*Всего* | **
27. Вывести количество разработчиков
```sh
select count(employee_name)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%developer%'
;
```

*Всего* | **
28. Вывести фонд (сумму) зарплаты разработчиков.
```sh
select sum(monthly_salary)
from employees
full join employees_salary
on employees_salary.employee_id = employees.id
full join roles_employees
on roles_employees.employee_id = employees.id
full join roles
on role_id = roles.id
where role_name like '%developer%'
;
```

*Всего* | **
29. Вывести имена, должности и ЗП всех специалистов по возрастанию
```sh
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
order by employee_name
;
```

*Всего* | **
30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
```sh
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
where monthly_salary between 1700 and 2300
order by employee_name
;
```

*Всего* | **
31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
```sh
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
where monthly_salary < 2300
order by monthly_salary
;
```

*Всего* | **
32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
```sh
select employee_name, role_name, monthly_salary
from employees
left join employees_salary
on employees_salary.employee_id = employees.id
left join roles_employees
on roles_employees.employee_id = employees.id
left join roles
on role_id = roles.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary
;
```
employee_name|role_name                |monthly_salary|
-------------|-------------------------|--------------|
Victor       |Junior Java developer    |          1100|
Leo          |Senior Manual QA engineer|          1100|
Elena        |Designer                 |          1500|
Milana       |                         |          1500|
Luna         |Designer                 |          2000|
*Всего* | *5*
