INSERT INTO delivery (address_id, delivery_date, time_range, staff_id)
	VALUES (107, '2021-10-27', ARRAY['10:00:00', '20:00:00'], 3),
		(208, '2021-10-28', ARRAY['20:00:00', '21:00:00'], 3),
		(178, '2021-10-26', ARRAY['22:00:00', '23:00:00'], 3);
	
--SELECT address_id 
--	FROM address AS a;

--SELECT * 
--	FROM staff;
	
SELECT *
	FROM delivery AS d
--	WHERE deleted IS FALSE;
	
UPDATE delivery
	SET status = 'доставлено'
	WHERE delivery_id = 1;

DELETE FROM delivery;
	