DROP TABLE delivery;

CREATE TABLE delivery (
	delivery_id serial PRIMARY KEY,
	address_id int NOT NULL 
		REFERENCES address (address_id),
	delivery_date date NOT NULL,
	time_range TEXT[] NOT NULL,
	staff_id int NOT NULL
		REFERENCES staff (staff_id),
	status del_status NOT NULL
		DEFAULT 'в обработке',
	last_update timestamp,
	created_date timestamp NOT NULL
		DEFAULT now(),
	deleted bool NOT NULL
		DEFAULT FALSE
);

--ALTER TABLE orders (
--	delivery_id
--		REFERENCES delivery (delivery_id)
--);