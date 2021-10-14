--1. ������� ��� ���� � ��� ������.
SELECT * 
	FROM qa_users;

--2. ������� ���� ��������� � �������

--3. ������� ������ Id �������������
SELECT user_id 
	FROM qa_users;

--4. ������� ������ ��� �������������
SELECT username 
	FROM qa_users;

--5. ������� ������ email �������������
SELECT email 
	FROM qa_users;

--6. ������� ��� � email �������������
SELECT username, email 
	FROM qa_users;

--7. ������� id, ���, email � ���� �������� �������������
SELECT user_id, username, email, created_on 
	FROM qa_users;

--8. ������� ������������� ��� password 12333
SELECT * 
	FROM qa_users 
	WHERE password = '12333';

--9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
SELECT * 
	FROM qa_users 
	WHERE created_on = '2021-03-26 00:00:00';

--10. ������� ������������� ��� � ����� ���� ����� ����
SELECT * 
	FROM qa_users 
	WHERE username LIKE 'Anna%';

--11. ������� ������������� ��� � ����� � ����� ���� 8
SELECT * 
	FROM qa_users 
	WHERE username LIKE '%8';

--12. ������� ������������� ��� � ����� � ���� ����� �
SELECT * 
	FROM qa_users 
	WHERE username LIKE '%a%';

--13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
SELECT * 
	FROM qa_users 
	WHERE created_on = '2021-07-12 00:00:00';

--14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
SELECT * 
	FROM qa_users 
	WHERE created_on = '2021-07-12 00:00:00' 
		AND "password" = '1m313';

--15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� ANDrey
SELECT * 
	FROM qa_users 
	WHERE created_on = '2021-07-12 00:00:00' 
		AND username LIKE '%Andrey%';

--16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
SELECT * 
	FROM qa_users 
	WHERE created_on = '2021-07-12 00:00:00' 
		AND username LIKE '%8%';

--17. ������� ������������ � ������� id ����� 10
SELECT * 
	FROM qa_users 
	WHERE user_id = 10;

--18. ������� ������������ � ������� id ����� 53
SELECT * 
	FROM qa_users 
	WHERE user_id = 53;

--19. ������� ������������ � ������� id ������ 40
SELECT * 
	FROM qa_users 
	WHERE user_id > 40;

--20. ������� ������������ � ������� id ������ 30
SELECT * 
	FROM qa_users 
	WHERE user_id < 30;

--21. ������� ������������ � ������� id ������ 27 ��� ������ 88
SELECT * 
	FROM qa_users 
	WHERE user_id < 27 
		or user_id > 88;

--22. ������� ������������ � ������� id ������ ���� ����� 37
SELECT * 	
	FROM qa_users 
	WHERE user_id <= 37;

--23. ������� ������������ � ������� id ������ ���� ����� 37
SELECT * 
	FROM qa_users 
	WHERE user_id >= 37;

--24. ������� ������������ � ������� id ������ 80 �� ������ 90
SELECT * 
	FROM qa_users 
	WHERE user_id > 80 
		AND user_id < 90;

--25. ������� ������������ � ������� id ����� 80 � 90
SELECT * 
	FROM qa_users 
	WHERE user_id BETWEEN 80 AND 90;

--26. ������� ������������� ��� password ����� 12333, 1m313, 123313
SELECT * 
	FROM qa_users 
	WHERE "password" IN ('12333', '1m313', '123313');

--27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * 
	FROM qa_users 
	WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

--28. ������� ����������� id 
SELECT min(user_id) 
	FROM qa_users;

--29. ������� ������������.
SELECT max(user_id) 
	FROM qa_users;

--30. ������� ���������� �������������
SELECT count(user_id) 
	FROM qa_users;

--31. ������� id ������������, ���, ���� �������� ������������.
--������������� �� ������� ����������� ���� ���������� �������������.
SELECT user_id, username, created_on 
	FROM qa_users 
	ORDER BY created_on;

--32. ������� id ������������, ���, ���� �������� ������������.
--������������� �� ������� �������� ���� ���������� �������������.
SELECT user_id, username, created_on 
	FROM qa_users 
	ORDER BY created_on DESC;
