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
---------------|----------------
 Dmitry        |          2,300 
 Elena         |          1,500 
 Alex          |          1,000 
 Victor        |          1,100 
 Elena         |          2,100 
 Anna          |          1,400 
 Milana        |          1,500 
 Olga          |          1,700 
 Sergey        |          1,750 
 Vadim         |          1,750 
 Anton         |          1,850 
 James         |          1,850 
 Luna          |          2,000 
 Aria          |          2,200 
 Valentina     |          2,800 
 Henry         |          4,100 
 Oliver        |            700 
 David         |          1,000 
 Luke          |            900 
 Leo           |          1,100 
 Scarlett      |          1,200 
 Penelope      |          1,600 
 Nora          |          1,620 
 Lily          |          2,350 
*Всего* | *24*
2. Вывести всех работников у которых ЗП меньше 2000.
```sh
select employee_name, monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id 
where employees_salary.monthly_salary < 2000;
```
employee_name|monthly_salary
-------------|--------------
Elena        |         1,500
Alex         |         1,000
Victor       |         1,100
Anna         |         1,400
Milana       |         1,500
Olga         |         1,700
Sergey       |         1,750
Vadim        |         1,750
Anton        |         1,850
James        |         1,850
Oliver       |           700
David        |         1,000
Luke         |           900
Leo          |         1,100
Scarlett     |         1,200
Penelope     |         1,600
Nora         |         1,620
*Всего* | *17*
3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```sh
select employees_salary.monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where employees.employee_name is null;
```
monthly_salary|
--------------|
         1,700|
         1,700|
         2,700|
         2,300|
         2,300|
         1,300|
         3,000|
         1,500|
         1,900|
         2,000|
         7,000|
*Всего* | **
|monthly_salary
|--------------
|         1,700
|         1,700
|         2,700
|         2,300
|         2,300
|         1,300
|         3,000
|         1,500
|         1,900
|         2,000
|         7,000
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
 employee_name | role_name                     | monthly_salary 
---------------|-------------------------------|----------------
 Alex          | Middle Python developer       |          1,000 
 Alexander     | Middle JavaScript developer   |         [NULL] 
 Alice         | [NULL]                        |         [NULL] 
 Allison       | [NULL]                        |         [NULL] 
 Andrey        | Senior Python developer       |         [NULL] 
 Anna          | Junior Manual QA engineer     |          1,400 
 Anton         | Middle Manual QA engineer     |          1,850 
 Anton         | Junior Java developer         |         [NULL] 
 Aria          | Designer                      |          2,200 
 Bella         | [NULL]                        |         [NULL] 
 Clara         | [NULL]                        |         [NULL] 
 David         | Middle Manual QA engineer     |          1,000 
 Dmitry        | Senior Python developer       |          2,300 
 Dominic       | [NULL]                        |         [NULL] 
 Elena         | Senior Java developer         |          2,100 
 Elena         | Designer                      |          1,500 
 Ellie         | Junior Automation QA engineer |         [NULL] 
 Erik          | Senior Manual QA engineer     |         [NULL] 
 Eva           | [NULL]                        |         [NULL] 
 George        | Senior Java developer         |         [NULL] 
 Henry         | CEO                           |          4,100 
 Jack          | Junior Manual QA engineer     |         [NULL] 
 Jacob         | Senior JavaScript developer   |         [NULL] 
 James         | Junior JavaScript developer   |          1,850 
 Jordan        | [NULL]                        |         [NULL] 
 Leo           | Senior Manual QA engineer     |          1,100 
 Leonardo      | [NULL]                        |         [NULL] 
 Lily          | Sales manager                 |          2,350 
 Lucas         | Junior JavaScript developer   |         [NULL] 
 Lucy          | Senior Automation QA engineer |         [NULL] 
 Luke          | Senior Manual QA engineer     |            900 
 Luna          | Designer                      |          2,000 
 Marcus        | Project Manager               |         [NULL] 
 Matthew       | Middle Manual QA engineer     |         [NULL] 
 Max           | Senior Java developer         |         [NULL] 
 Maya          | Senior JavaScript developer   |         [NULL] 
 Milana        | [NULL]                        |          1,500 
 Naomi         | [NULL]                        |         [NULL] 
 Nora          | Sales manager                 |          1,620 
 Olga          | [NULL]                        |          1,700 
 Oliver        | Junior JavaScript developer   |            700 
 Penelope      | HR                            |          1,600 
 Samantha      | [NULL]                        |         [NULL] 
 Samuel        | Junior Manual QA engineer     |         [NULL] 
 Scarlett      | HR                            |          1,200 
 Sergey        | Middle Java developer         |          1,750 
 Sophia        | Middle JavaScript developer   |         [NULL] 
 Vadim         | Junior Manual QA engineer     |          1,750 
 Valentina     | [NULL]                        |          2,800 
 Vera          | Sales manager                 |         [NULL] 
 Victor        | Junior Java developer         |          1,100 
 Victor        | Middle Java developer         |         [NULL] 
 Violet        | Middle Automation QA engineer |         [NULL] 
*Всего* | *53*
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
 employee_name | role_name                   | monthly_salary 
---------------|-----------------------------|----------------
 Anton         | Middle Manual QA engineer   |          1,850 
 Aria          | Designer                    |          2,200 
 Dmitry        | Senior Python developer     |          2,300 
 Elena         | Senior Java developer       |          2,100 
 James         | Junior JavaScript developer |          1,850 
 Luna          | Designer                    |          2,000 
 Olga          | [NULL]                      |          1,700 
 Sergey        | Middle Java developer       |          1,750 
 Vadim         | Junior Manual QA engineer   |          1,750 
*Всего* | *9*
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
 employee_name | role_name                   | monthly_salary 
---------------|-----------------------------|----------------
 Oliver        | Junior JavaScript developer |            700 
 Luke          | Senior Manual QA engineer   |            900 
 Alex          | Middle Python developer     |          1,000 
 David         | Middle Manual QA engineer   |          1,000 
 Victor        | Junior Java developer       |          1,100 
 Leo           | Senior Manual QA engineer   |          1,100 
 Scarlett      | HR                          |          1,200 
 Anna          | Junior Manual QA engineer   |          1,400 
 Elena         | Designer                    |          1,500 
 Milana        | [NULL]                      |          1,500 
 Penelope      | HR                          |          1,600 
 Nora          | Sales manager               |          1,620 
 Olga          | [NULL]                      |          1,700 
 Sergey        | Middle Java developer       |          1,750 
 Vadim         | Junior Manual QA engineer   |          1,750 
 Anton         | Middle Manual QA engineer   |          1,850 
 James         | Junior JavaScript developer |          1,850 
 Luna          | Designer                    |          2,000 
 Elena         | Senior Java developer       |          2,100 
 Aria          | Designer                    |          2,200 
*Всего* | *20*
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
 employee_name | role_name                 | monthly_salary 
---------------|---------------------------|----------------
 Victor        | Junior Java developer     |          1,100 
 Leo           | Senior Manual QA engineer |          1,100 
 Elena         | Designer                  |          1,500 
 Milana        | [NULL]                    |          1,500 
 Luna          | Designer                  |          2,000 
*Всего* | *5*
