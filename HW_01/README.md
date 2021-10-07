### SQL HomeWork 01

����������� � 
```sh
Host: 159.69.151.133
Port: 5056
User: user_22_x
Pass: 123
Table: qa_users
```
---
������� ��������� ���� � ������� �� ������ ������ ������� �������� sql ������ ������� �������� �������.

��������� ���� ���������� �� ��� � ���������� ������ �� ��������.
---
1. ������� ��� ���� � ��� ������.
`SELECT * FROM qa_users;`
2. ������� ���� ��������� � �������

3. ������� ������ Id �������������
`select user_id from qa_users;`
4. ������� ������ ��� �������������
`select username from qa_users;`
5. ������� ������ email �������������
`select email from qa_users;`
6. ������� ��� � email �������������
`select username, email from qa_users;`
7. ������� id, ���, email � ���� �������� �������������
`select user_id, username, email, created_on from qa_users;`
8. ������� ������������� ��� password 12333
`select * from qa_users where password = '12333';`
9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
`select * from qa_users where created_on = '2021-03-26 00:00:00';`
10. ������� ������������� ��� � ����� ���� ����� ����
`select * from qa_users where username like 'Anna%';`
11. ������� ������������� ��� � ����� � ����� ���� 8
`select * from qa_users where username like '%8';`
12. ������� ������������� ��� � ����� � ���� ����� �
`select * from qa_users where username like '%a%';`
13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
`select * from qa_users where created_on = '2021-07-12 00:00:00';`
14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
`select * from qa_users where created_on = '2021-07-12 00:00:00' and "password" = '1m313';`
15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
`select * from qa_users where created_on = '2021-07-12 00:00:00' and username like '%Andrey%';`
16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
`select * from qa_users where created_on = '2021-07-12 00:00:00' and username like '%8%';`
17. ������� ������������ � ������� id ����� 10
`select * from qa_users where user_id = 10;`
18. ������� ������������ � ������� id ����� 53
`select * from qa_users where user_id = 53;`
19. ������� ������������ � ������� id ������ 40
`select * from qa_users where user_id > 40;`
20. ������� ������������ � ������� id ������ 30
`select * from qa_users where user_id < 30;`
21. ������� ������������ � ������� id ������ 27 ��� ������ 88
`select * from qa_users where user_id < 27 or user_id > 88;`
22. ������� ������������ � ������� id ������ ���� ����� 37
`select * from qa_users where user_id <= 37;`
23. ������� ������������ � ������� id ������ ���� ����� 37
`select * from qa_users where user_id >= 37;`
24. ������� ������������ � ������� id ������ 80 �� ������ 90
`select * from qa_users where user_id > 80 and user_id < 90;`
25. ������� ������������ � ������� id ����� 80 � 90
`select * from qa_users where user_id between 80 and 90;`
26. ������� ������������� ��� password ����� 12333, 1m313, 123313
`select * from qa_users where "password" IN ('12333', '1m313', '123313');`
27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
`select * from qa_users where created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');`
28. ������� ����������� id 
`select min(user_id) from qa_users;`
29. ������� ������������.
`select max(user_id) from qa_users;`
30. ������� ���������� �������������
`select count(user_id) from qa_users;`
31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
`select user_id, username, created_on from qa_users order by created_on;`
32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
`select user_id, username, created_on from qa_users order by created_on desc;`