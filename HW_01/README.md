### SQL HomeWork 01

Подключится к 
```sh
Host: 159.69.151.133
Port: 5056
User: user_22_x
Pass: 123
Table: qa_users
```
---
Создать текстовый файл в котором на против каждой команды напишите sql запрос который выполнит команду.

Текстовый файл выгружайте на гит и скидывайте ссылки на проверку.

---
1. Вывести все поля и все строки.

`SELECT * FROM qa_users;`

2. Вывести всех студентов в таблице

3. Вывести только Id пользователей

`select user_id from qa_users;`

4. Вывести только имя пользователей

`select username from qa_users;`

5. Вывести только email пользователей

`select email from qa_users;`

6. Вывести имя и email пользователей

`select username, email from qa_users;`

7. Вывести id, имя, email и дату создания пользователей

`select user_id, username, email, created_on from qa_users;`

8. Вывести пользователей где password 12333

`select * from qa_users where password = '12333';`

9. Вывести пользователей которые были созданы 2021-03-26 00:00:00

`select * from qa_users where created_on = '2021-03-26 00:00:00';`

10. Вывести пользователей где в имени есть слово Анна

`select * from qa_users where username like 'Anna%';`

11. Вывести пользователей где в имени в конце есть 8

`select * from qa_users where username like '%8';`

12. Вывести пользователей где в имени в есть буква а

`select * from qa_users where username like '%a%';`

13. Вывести пользователей которые были созданы 2021-07-12 00:00:00

`select * from qa_users where created_on = '2021-07-12 00:00:00';`

14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313

`select * from qa_users where created_on = '2021-07-12 00:00:00' and "password" = '1m313';`

15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey

`select * from qa_users where created_on = '2021-07-12 00:00:00' and username like '%Andrey%';`

16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8

`select * from qa_users where created_on = '2021-07-12 00:00:00' and username like '%8%';`

17. Вывести пользователя у которых id равен 10

`select * from qa_users where user_id = 10;`

18. Вывести пользователя у которых id равен 53

`select * from qa_users where user_id = 53;`

19. Вывести пользователя у которых id больше 40

`select * from qa_users where user_id > 40;`

20. Вывести пользователя у которых id меньше 30

`select * from qa_users where user_id < 30;`

21. Вывести пользователя у которых id меньше 27 или больше 88

`select * from qa_users where user_id < 27 or user_id > 88;`

22. Вывести пользователя у которых id меньше либо равно 37

`select * from qa_users where user_id <= 37;`

23. Вывести пользователя у которых id больше либо равно 37

`select * from qa_users where user_id >= 37;`

24. Вывести пользователя у которых id больше 80 но меньше 90

`select * from qa_users where user_id > 80 and user_id < 90;`

25. Вывести пользователя у которых id между 80 и 90

`select * from qa_users where user_id between 80 and 90;`

26. Вывести пользователей где password равен 12333, 1m313, 123313

`select * from qa_users where "password" IN ('12333', '1m313', '123313');`

27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00

`select * from qa_users where created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');`

28. Вывести минимальный id 

`select min(user_id) from qa_users;`

29. Вывести максимальный.

`select max(user_id) from qa_users;`

30. Вывести количество пользователей

`select count(user_id) from qa_users;`

31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.

`select user_id, username, created_on from qa_users order by created_on;`

32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.

`select user_id, username, created_on from qa_users order by created_on desc;`
