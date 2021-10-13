--2. Заполните таблицы данными. Не менее 10 строк в каждой таблице

--Заполнение "salary"
INSERT INTO	salary (id, monthly_salary) VALUES (DEFAULT, 300);
INSERT INTO	salary (id, monthly_salary) VALUES (DEFAULT, 450);
INSERT INTO	salary (id, monthly_salary) VALUES (DEFAULT, 600);
INSERT INTO	salary (id, monthly_salary) VALUES (DEFAULT, 750);
INSERT INTO	salary (id, monthly_salary) VALUES (DEFAULT, 900);
INSERT INTO	salary (id, monthly_salary) VALUES (DEFAULT, 1100);
INSERT INTO	salary (id, monthly_salary) VALUES (DEFAULT, 1450);
INSERT INTO	salary (id, monthly_salary) VALUES (DEFAULT, 1700);
INSERT INTO	salary (id, monthly_salary) VALUES (DEFAULT, 2000);
INSERT INTO	salary (id, monthly_salary) VALUES (DEFAULT, 2500);
--SELECT * FROM salary;

--Заполнение "roles"
INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'Area Manager');
INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'Store Manager');
INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'Deputy Manager');
INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'Team Leader');
INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'Retail Assistant');
INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'Night Replenishment Assistant');
INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'Cleaner');
INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'Apprentice');
INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'Supervisor');
INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'HR');
--SELECT * FROM roles;

--Заполнение "roles_salary"
INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 1, 10);
INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 2, 9);
INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 3, 8);
INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 10, 7);
INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 9, 6);
INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 6, 3);
INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 7, 2);
INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 8, 1);
INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 4, 5);
INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 5, 4);
--SELECT * FROM roles_salary;

--Заполнение "employees"
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'John Wich');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'James Bomd');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Walter Whike');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Mata Hapi');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Brendan Flaser');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Alicia Keep');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Zoe Kravipz');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Lenny Kravipz');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Christian Bane');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Winona Ryter');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Jonah Hipp');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Montgomery Turns');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Morgan Fleeman');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Nikola Testa');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Neil DeGrasse Tykoon');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Smash N. Pumpkins');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Harry Pokker');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Leonardo PiCaprio');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Mona Lida');
INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Elon Must');
--SELECT * FROM employees;

--Заполнение "employees_roles"
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 1, 17);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 2, 13);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 2, 16);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 3, 19);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 3, 12);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 10, 14);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 9, 18);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 9, 11);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 9, 15);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 4, 20);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 5, 1);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 5, 2);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 5, 6);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 6, 7);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 6, 9);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 6, 8);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 8, 5);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 7, 4);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 7, 10);
INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 7, 3);
--SELECT * FROM employees_roles;

--Заполнение "service"
INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'Desktop App', 30000);
INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'Web App', 70000);
INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'Mobile App', 90000);
INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'Server', 120000);
INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'Website', 110000);
INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'PC Game', 200000);
INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'Mobile Game', 340000);
INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'OS', 1300500);
INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'Social Media', 1240000);
INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'Calculator', 3400);
--SELECT * FROM service;

--Заполнение "materials"
INSERT INTO materials (id, material_title, amount, price)
	VALUES (DEFAULT, 'Wood', 10, 300);
INSERT INTO materials (id, material_title, amount, price)
	VALUES (DEFAULT, 'Rocks', 15, 250);
INSERT INTO materials (id, material_title, amount, price)
	VALUES (DEFAULT, 'Mineral', 3, 450);
INSERT INTO materials (id, material_title, amount, price)
	VALUES (DEFAULT, 'Soil', 100, 700);
INSERT INTO materials (id, material_title, amount, price)
	VALUES (DEFAULT, 'Water', 30, 900);
INSERT INTO materials (id, material_title, amount, price)
	VALUES (DEFAULT, 'Gas', 10, 850);
INSERT INTO materials (id, material_title, amount, price)
	VALUES (DEFAULT, 'Iron', 70, 150);
INSERT INTO materials (id, material_title, amount, price)
	VALUES (DEFAULT, 'Plastic', 160, 400);
INSERT INTO materials (id, material_title, amount, price)
	VALUES (DEFAULT, 'Ceramic', 60, 650);
INSERT INTO materials (id, material_title, amount, price)
	VALUES (DEFAULT, 'Rubber', 70, 500);
--SELECT * FROM materials;

--Заполнение "claim"
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
	VALUES (DEFAULT, 1, 2, 3, CURRENT_TIMESTAMP, 11);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
	VALUES (DEFAULT, 2, 3, 4, CURRENT_TIMESTAMP, 12);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
	VALUES (DEFAULT, 3, 4, 5, CURRENT_TIMESTAMP, 13);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
	VALUES (DEFAULT, 4, 5, 6, CURRENT_TIMESTAMP, 14);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
	VALUES (DEFAULT, 5, 6, 7, CURRENT_TIMESTAMP, 15);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
	VALUES (DEFAULT, 6, 7, 8, CURRENT_TIMESTAMP, 16);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
	VALUES (DEFAULT, 7, 8, 9, CURRENT_TIMESTAMP, 17);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
	VALUES (DEFAULT, 8, 9, 10, CURRENT_TIMESTAMP, 18);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
	VALUES (DEFAULT, 9, 10, 1, CURRENT_TIMESTAMP, 19);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
	VALUES (DEFAULT, 10, 1, 2, CURRENT_TIMESTAMP, 20);
SELECT * FROM claim;

--CREATE TABLE claim (
--	id serial PRIMARY KEY,
--	service_id int NOT NULL,
--	employee_id int NOT NULL,
--	material_id int NOT NULL,
--	claim_date date NOT NULL,
--	sales_manager int NOT NULL,
--	FOREIGN KEY (service_id)
--		REFERENCES service (id),
--	FOREIGN KEY (employee_id)
--		REFERENCES employees (id),
--	FOREIGN KEY (material_id)
--		REFERENCES materials (id),
--	FOREIGN KEY (sales_manager)
--		REFERENCES employees (id)
--);

SELECT *
	FROM claim
	JOIN service
		ON service_id = service.id
	JOIN employees
		ON employee_id = employees.id 
			OR employee_id = sales_manager
	JOIN materials
		ON material_id = materials.id
	JOIN employees_roles er
		ON id_employee = employees.id
	JOIN roles r 
		ON r.id = er.id_role
	JOIN roles_salary rs 
		ON rs.id_role = r.id
	JOIN salary s 
		ON s.id = id_salary;
	
	