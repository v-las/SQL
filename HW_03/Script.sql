-- 1. Создайте базу из представленной картинки.

CREATE TABLE salary (
	id serial PRIMARY KEY,
	monthly_salary int
);

CREATE TABLE roles (
	id serial PRIMARY KEY,
	role_title varchar (50)
);

CREATE TABLE roles_salary (
	id serial,
	id_role int,
	id_salary int,
	PRIMARY KEY (id),
	FOREIGN KEY (id_role)
		REFERENCES Roles (id),
	FOREIGN KEY (id_salary)
		REFERENCES Salary (id)
);

CREATE TABLE employees (
	id serial PRIMARY KEY,
	employee_name varchar (50)
);

CREATE TABLE employees_roles (
	id serial,
	id_role int,
	id_employee int,
	PRIMARY KEY (id),
	FOREIGN KEY (id_role)
		REFERENCES Roles (id),
	FOREIGN KEY (id_employee)
		REFERENCES Employees (id)
);

CREATE TABLE service (
	id serial PRIMARY KEY,
	service_title varchar (50),
	price int
);

CREATE TABLE materials (
	id serial PRIMARY KEY,
	material_title varchar (50),
	amount int,
	price int
);

CREATE TABLE claim (
	id serial,
	service_id int,
	employee_id int,
	material_id int,
	claim_date date,
	sales_manager int,
	PRIMARY KEY (id),
	FOREIGN KEY (service_id)
		REFERENCES service (id),
	FOREIGN KEY (employee_id)
		REFERENCES employees (id),
	FOREIGN KEY (material_id)
		REFERENCES materials (id),
	FOREIGN KEY (sales_manager)
		REFERENCES employees (id)
);
