### SQL HomeWork 2. Joins
```sh
Подключится к 
Host: 159.69.151.133
Port: 5056
DB: qa_db_2
User: user_22_x
Pass: 123
```
===
1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
```sh
select employees.employee_name, employees_salary.monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id;
``
2. Вывести всех работников у которых ЗП меньше 2000.
```sh
select employees.employee_name, employees_salary.monthly_salary 
from employees
join employees_salary
on employees.id = employees_salary.employee_id 
where employees_salary.monthly_salary < 2000;
```
3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```sh
select employees_salary.monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where employees.employee_name is null;
```
4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```sh
select employees_salary.monthly_salary 
from employees
right join employees_salary
on employees.id = employees_salary.employee_id
where employees.employee_name is null
and employees_salary.monthly_salary < 2000;
```
5. Найти всех работников кому не начислена ЗП.
```sh
select employees.employee_name, employees_salary.monthly_salary 
from employees
left join employees_salary
on employees.id = employees_salary.employee_id
where employees_salary.monthly_salary is null;
```
6. Вывести всех работников с названиями их должности.
```sh
select employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
join roles
on roles_employees.role_id = roles.id;
```
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
11. Вывести имена и должность автоматизаторов QA
```sh

```
12. Вывести имена и зарплаты Junior специалистов
```sh

```
13. Вывести имена и зарплаты Middle специалистов
```sh

```
14. Вывести имена и зарплаты Senior специалистов
```sh

```
15. Вывести зарплаты Java разработчиков
```sh

```
16. Вывести зарплаты Python разработчиков
```sh

```
17. Вывести имена и зарплаты Junior Python разработчиков
```sh

```
18. Вывести имена и зарплаты Middle JS разработчиков
```sh

```
19. Вывести имена и зарплаты Senior Java разработчиков
```sh

```
20. Вывести зарплаты Junior QA инженеров
```sh

```
21. Вывести среднюю зарплату всех Junior специалистов
```sh

```
22. Вывести сумму зарплат JS разработчиков
```sh

```
23. Вывести минимальную ЗП QA инженеров

24. Вывести максимальную ЗП QA инженеров

25. Вывести количество QA инженеров

26. Вывести количество Middle специалистов.

27. Вывести количество разработчиков

28. Вывести фонд (сумму) зарплаты разработчиков.

29. Вывести имена, должности и ЗП всех специалистов по возрастанию

30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
