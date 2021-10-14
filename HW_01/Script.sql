--1. Вывести все поля и все строки.
SELECT * 
	FROM qa_users;

--2. Вывести всех студентов в таблице

--3. Вывести только Id пользователей
SELECT user_id 
	FROM qa_users;

--4. Вывести только имя пользователей
SELECT username 
	FROM qa_users;

--5. Вывести только email пользователей
SELECT email 
	FROM qa_users;

--6. Вывести имя и email пользователей
SELECT username, email 
	FROM qa_users;

--7. Вывести id, имя, email и дату создания пользователей
SELECT user_id, username, email, created_on 
	FROM qa_users;

--8. Вывести пользователей где password 12333
SELECT * 
	FROM qa_users 
	WHERE password = '12333';

--9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
SELECT * 
	FROM qa_users 
	WHERE created_on = '2021-03-26 00:00:00';

--10. Вывести пользователей где в имени есть слово Анна
SELECT * 
	FROM qa_users 
	WHERE username LIKE 'Anna%';

--11. Вывести пользователей где в имени в конце есть 8
SELECT * 
	FROM qa_users 
	WHERE username LIKE '%8';

--12. Вывести пользователей где в имени в есть буква а
SELECT * 
	FROM qa_users 
	WHERE username LIKE '%a%';

--13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
SELECT * 
	FROM qa_users 
	WHERE created_on = '2021-07-12 00:00:00';

--14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
SELECT * 
	FROM qa_users 
	WHERE created_on = '2021-07-12 00:00:00' 
		AND "password" = '1m313';

--15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово ANDrey
SELECT * 
	FROM qa_users 
	WHERE created_on = '2021-07-12 00:00:00' 
		AND username LIKE '%Andrey%';

--16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
SELECT * 
	FROM qa_users 
	WHERE created_on = '2021-07-12 00:00:00' 
		AND username LIKE '%8%';

--17. Вывести пользователя у которых id равен 10
SELECT * 
	FROM qa_users 
	WHERE user_id = 10;

--18. Вывести пользователя у которых id равен 53
SELECT * 
	FROM qa_users 
	WHERE user_id = 53;

--19. Вывести пользователя у которых id больше 40
SELECT * 
	FROM qa_users 
	WHERE user_id > 40;

--20. Вывести пользователя у которых id меньше 30
SELECT * 
	FROM qa_users 
	WHERE user_id < 30;

--21. Вывести пользователя у которых id меньше 27 или больше 88
SELECT * 
	FROM qa_users 
	WHERE user_id < 27 
		or user_id > 88;

--22. Вывести пользователя у которых id меньше либо равно 37
SELECT * 	
	FROM qa_users 
	WHERE user_id <= 37;

--23. Вывести пользователя у которых id больше либо равно 37
SELECT * 
	FROM qa_users 
	WHERE user_id >= 37;

--24. Вывести пользователя у которых id больше 80 но меньше 90
SELECT * 
	FROM qa_users 
	WHERE user_id > 80 
		AND user_id < 90;

--25. Вывести пользователя у которых id между 80 и 90
SELECT * 
	FROM qa_users 
	WHERE user_id BETWEEN 80 AND 90;

--26. Вывести пользователей где password равен 12333, 1m313, 123313
SELECT * 
	FROM qa_users 
	WHERE "password" IN ('12333', '1m313', '123313');

--27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * 
	FROM qa_users 
	WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

--28. Вывести минимальный id 
SELECT min(user_id) 
	FROM qa_users;

--29. Вывести максимальный.
SELECT max(user_id) 
	FROM qa_users;

--30. Вывести количество пользователей
SELECT count(user_id) 
	FROM qa_users;

--31. Вывести id пользователя, имя, дату создания пользователя.
--Отсортировать по порядку возрастания даты добавления пользоватлеля.
SELECT user_id, username, created_on 
	FROM qa_users 
	ORDER BY created_on;

--32. Вывести id пользователя, имя, дату создания пользователя.
--Отсортировать по порядку убывания даты добавления пользоватлеля.
SELECT user_id, username, created_on 
	FROM qa_users 
	ORDER BY created_on DESC;
