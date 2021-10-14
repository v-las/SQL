-- 1. Создайте базу из представленной картинки.
-- У каждой таблицы должно быть поле id
-- id автоинкрементальный и является первичным ключом
CREATE TABLE salary 
(
	id serial PRIMARY KEY,
	monthly_salary int NOT NULL
);

CREATE TABLE roles 
(
	id serial PRIMARY KEY,
	role_title varchar (50) UNIQUE NOT NULL
);

CREATE TABLE roles_salary 
(
	id serial PRIMARY KEY,
	id_role int NOT NULL,
	id_salary int NOT NULL,
	FOREIGN KEY (id_role)
		REFERENCES roles (id),
	FOREIGN KEY (id_salary)
		REFERENCES salary (id)
);

CREATE TABLE employees 
(
	id serial PRIMARY KEY,
	employee_name varchar (50) NOT NULL
);

CREATE TABLE employees_roles 
(
	id serial PRIMARY KEY,
	id_role int NOT NULL,
	id_employee int NOT NULL,
	FOREIGN KEY (id_role)
		REFERENCES roles (id),
	FOREIGN KEY (id_employee)
		REFERENCES employees (id)
);

CREATE TABLE service 
(
	id serial PRIMARY KEY,
	service_title varchar (50) UNIQUE NOT NULL,
	price int NOT NULL
);

CREATE TABLE materials 
(
	id serial PRIMARY KEY,
	material_title varchar (50) UNIQUE NOT NULL,
	amount int NOT NULL,
	price int NOT NULL
);

CREATE TABLE claim 
(
	id serial PRIMARY KEY,
	service_id int NOT NULL,
	employee_id int NOT NULL,
	material_id int NOT NULL,
	claim_date date NOT NULL,
	sales_manager int NOT NULL,
	FOREIGN KEY (service_id)
		REFERENCES service (id),
	FOREIGN KEY (employee_id)
		REFERENCES employees (id),
	FOREIGN KEY (material_id)
		REFERENCES materials (id),
	FOREIGN KEY (sales_manager)
		REFERENCES employees (id)
);

--3. Добавить таблицу suppliers с полями id, name
CREATE TABLE suppliers
(
	id serial PRIMARY KEY,
	supplier_name varchar (50) UNIQUE NOT NULL
);

--5. Обновить таблицу Materials. Добавить поле supplier_id которое связано с полем id в таблице suppliers
ALTER TABLE materials 
	ADD COLUMN supplier_id int,
	ADD FOREIGN KEY (supplier_id)
		REFERENCES suppliers (id);
	
--6. Обновить таблицу employees. Добавить varchar поле surname на 50 символов.
ALTER TABLE employees 
	ADD COLUMN surname varchar (50);
