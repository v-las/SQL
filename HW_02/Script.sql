-- 1
SELECT employee_name, monthly_salary 
	FROM employees
	JOIN employees_salary
		ON employees.id = employees_salary.employee_id;

-- 2
SELECT employee_name, monthly_salary 
	FROM employees
	JOIN employees_salary
		ON employees.id = employees_salary.employee_id 
	WHERE monthly_salary < 2000;

-- 3
SELECT employee_name, monthly_salary 
	FROM employees
	RIGHT JOIN employees_salary
		ON employees.id = employees_salary.employee_id
	WHERE employee_name IS NULL;

-- 4
SELECT employee_name, monthly_salary 
	FROM employees
	RIGHT JOIN employees_salary
		ON employees.id = employees_salary.employee_id
	WHERE employee_name IS NULL
		AND monthly_salary < 2000;

-- 5
SELECT employee_name, monthly_salary 
	FROM employees
	LEFT JOIN employees_salary
		ON employees.id = employees_salary.employee_id
	WHERE monthly_salary IS NULL;

-- 6
SELECT employee_name, role_name
	FROM roles_employees
	FULL JOIN employees
		ON roles_employees.employee_id = employees.id
	LEFT JOIN roles
		ON role_id = roles.id;

-- 7
SELECT employee_name, role_name
	FROM roles_employees
	JOIN employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Java %';

-- 8
SELECT employee_name, role_name
	FROM roles_employees
	JOIN employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%PythON %';

-- 9
SELECT employee_name, role_name
	FROM roles_employees
	JOIN employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%QA%';

-- 10
SELECT employee_name, role_name
	FROM roles_employees
	JOIN employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Manual QA%';

-- 11
SELECT employee_name, role_name
	FROM roles_employees
	JOIN employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%AutomatiON QA%';

-- 12
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id 
	WHERE role_name LIKE '%Junior%';

-- 13
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id 
	WHERE role_name LIKE '%Middle%';

-- 14
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id 
	WHERE role_name LIKE '%Senior%';

-- 15
SELECT monthly_salary, role_name
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Java %';

-- 16
SELECT monthly_salary, role_name
	FROM employees
	JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Python%';

-- 17
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Junior Python%';

-- 18
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Middle JavaS%';

-- 19
SELECT employee_name, monthly_salary
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Senior%' 
		AND role_name LIKE '%Java %';

-- 20
SELECT monthly_salary
	FROM employees
	JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Junior%' 
		AND role_name LIKE '%QA%';

-- 21
SELECT avg(monthly_salary)
	FROM employees
	JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Junior%';

-- 22
SELECT sum(monthly_salary)
	FROM employees, employees_salary, roles_employees, roles
	WHERE employees_salary.employee_id = employees.id
		AND roles_employees.employee_id = employees.id
		AND role_id = roles.id
		AND role_name LIKE '%JavaS%';

-- 23
SELECT min(monthly_salary)
	FROM employees, employees_salary, roles_employees, roles
	WHERE employees_salary.employee_id = employees.id
		AND roles_employees.employee_id = employees.id
		AND role_id = roles.id
		AND role_name LIKE '%QA%';

-- 24
SELECT max(monthly_salary)
	FROM employees, employees_salary, roles_employees, roles
	WHERE employees_salary.employee_id = employees.id
		AND roles_employees.employee_id = employees.id
		AND role_id = roles.id
		AND role_name LIKE '%QA%';

-- 25
SELECT count(employee_name)
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%QA%';

-- 26
SELECT count(employee_name)
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%Middle%';

-- 27
SELECT count(employee_name)
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%developer%';

-- 28
SELECT sum(monthly_salary)
	FROM employees
	FULL JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	FULL JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	FULL JOIN roles
		ON role_id = roles.id
	WHERE role_name LIKE '%developer%';

-- 29
SELECT employee_name, role_name, monthly_salary
	FROM employees
	LEFT JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	LEFT JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	LEFT JOIN roles
		ON role_id = roles.id
	ORDER BY employee_name;

-- 30
SELECT employee_name, role_name, monthly_salary
	FROM employees
	LEFT JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	LEFT JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	LEFT JOIN roles
		ON role_id = roles.id
	WHERE monthly_salary BETWEEN 1700 AND 2300
	ORDER BY monthly_salary;

-- 31
SELECT employee_name, role_name, monthly_salary
	FROM employees
	LEFT JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	LEFT JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	LEFT JOIN roles
		ON role_id = roles.id
	WHERE monthly_salary < 2300
	ORDER BY monthly_salary;

-- 32
SELECT employee_name, role_name, monthly_salary
	FROM employees
	LEFT JOIN employees_salary
		ON employees_salary.employee_id = employees.id
	LEFT JOIN roles_employees
		ON roles_employees.employee_id = employees.id
	LEFT JOIN roles
		ON role_id = roles.id
	WHERE monthly_salary IN (1100, 1500, 2000)
	ORDER BY monthly_salary;
