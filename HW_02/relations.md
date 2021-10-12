### SQL HomeWork 2. Joins
#### Relations

1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

|employee_name|monthly_salary
|-------------|--------------
|Dmitry       |          2300
|Elena        |          1500
|Alex         |          1000
|Victor       |          1100
|Elena        |          2100
|Anna         |          1400
|Milana       |          1500
|Olga         |          1700
|Sergey       |          1750
|Vadim        |          1750
|Anton        |          1850
|James        |          1850
|Luna         |          2000
|Aria         |          2200
|Valentina    |          2800
|Henry        |          4100
|Oliver       |           700
|David        |          1000
|Luke         |           900
|Leo          |          1100
|Scarlett     |          1200
|Penelope     |          1600
|Nora         |          1620
|Lily         |          2350
*Всего* | *24*

2. Вывести всех работников у которых ЗП меньше 2000.

|employee_name|monthly_salary
|-------------|--------------
|Elena        |          1500
|Alex         |          1000
|Victor       |          1100
|Anna         |          1400
|Milana       |          1500
|Olga         |          1700
|Sergey       |          1750
|Vadim        |          1750
|Anton        |          1850
|James        |          1850
|Oliver       |           700
|David        |          1000
|Luke         |           900
|Leo          |          1100
|Scarlett     |          1200
|Penelope     |          1600
|Nora         |          1620
*Всего* | *17*

3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

|employee_name|monthly_salary
|-------------|--------------
|[NULL]       |          1700
|[NULL]       |          1700
|[NULL]       |          2700
|[NULL]       |          2300
|[NULL]       |          2300
|[NULL]       |          1300
|[NULL]       |          3000
|[NULL]       |          1500
|[NULL]       |          1900
|[NULL]       |          2000
|[NULL]       |          7000
*Всего* | *11*

4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

|employee_name|monthly_salary
|-------------|--------------
|[NULL]       |          1700
|[NULL]       |          1700
|[NULL]       |          1300
|[NULL]       |          1500
|[NULL]       |          1900
*Всего* | *5*

5. Найти всех работников кому не начислена ЗП.

|employee_name|monthly_salary
|-------------|--------------
|Maya         |        [NULL]
|Jacob        |        [NULL]
|Victor       |        [NULL]
|Marcus       |        [NULL]
|Erik         |        [NULL]
|George       |        [NULL]
|Eva          |        [NULL]
|Alice        |        [NULL]
|Andrey       |        [NULL]
|Ellie        |        [NULL]
|Vera         |        [NULL]
|Max          |        [NULL]
|Samantha     |        [NULL]
|Sophia       |        [NULL]
|Clara        |        [NULL]
|Jack         |        [NULL]
|Matthew      |        [NULL]
|Leonardo     |        [NULL]
|Dominic      |        [NULL]
|Lucy         |        [NULL]
|Samuel       |        [NULL]
|Violet       |        [NULL]
|Anton        |        [NULL]
|Allison      |        [NULL]
|Alexander    |        [NULL]
|Naomi        |        [NULL]
|Jordan       |        [NULL]
|Lucas        |        [NULL]
|Bella        |        [NULL]
*Всего* | *29*

6. Вывести всех работников с названиями их должности.

|employee_name|role_name                    
|-------------|-----------------------------
|Alex         |Middle Python developer      
|Victor       |Junior Java developer        
|Elena        |Senior Java developer        
|Anna         |Junior Manual QA engineer    
|Sergey       |Middle Java developer        
|Vadim        |Junior Manual QA engineer    
|Anton        |Middle Manual QA engineer    
|Erik         |Senior Manual QA engineer    
|Elena        |Designer                     
|Marcus       |Project Manager              
|Vera         |Sales manager                
|Dmitry       |Senior Python developer      
|Andrey       |Senior Python developer      
|Anton        |Junior Java developer        
|Victor       |Middle Java developer        
|George       |Senior Java developer        
|Max          |Senior Java developer        
|Oliver       |Junior JavaScript developer  
|Henry        |CEO                          
|James        |Junior JavaScript developer  
|Lucas        |Junior JavaScript developer  
|Alexander    |Middle JavaScript developer  
|Sophia       |Middle JavaScript developer  
|Maya         |Senior JavaScript developer  
|Jacob        |Senior JavaScript developer  
|Jack         |Junior Manual QA engineer    
|Samuel       |Junior Manual QA engineer    
|Matthew      |Middle Manual QA engineer    
|David        |Middle Manual QA engineer    
|Luke         |Senior Manual QA engineer    
|Leo          |Senior Manual QA engineer    
|Luna         |Designer                     
|Aria         |Designer                     
|Scarlett     |HR                           
|Penelope     |HR                           
|Nora         |Sales manager                
|Lily         |Sales manager                
|Ellie        |Junior Automation QA engineer
|Violet       |Middle Automation QA engineer
|Lucy         |Senior Automation QA engineer
|Eva          |[NULL]                       
|Alice        |[NULL]                       
|Milana       |[NULL]                       
|Samantha     |[NULL]                       
|Clara        |[NULL]                       
|Leonardo     |[NULL]                       
|Dominic      |[NULL]                       
|Olga         |[NULL]                       
|Allison      |[NULL]                       
|Naomi        |[NULL]                       
|Jordan       |[NULL]                       
|Valentina    |[NULL]                       
|Bella        |[NULL]                       
*Всего* | *53*

7. Вывести имена и должность только Java разработчиков.

|employee_name|role_name            
|-------------|---------------------
|Victor       |Junior Java developer
|Elena        |Senior Java developer
|Sergey       |Middle Java developer
|Anton        |Junior Java developer
|Victor       |Middle Java developer
|George       |Senior Java developer
|Max          |Senior Java developer
*Всего* | *7*

8. Вывести имена и должность только Python разработчиков.

|employee_name|role_name              
|-------------|-----------------------
|Alex         |Middle Python developer
|Dmitry       |Senior Python developer
|Andrey       |Senior Python developer
*Всего* | *3*

9. Вывести имена и должность всех QA инженеров.

|employee_name|role_name                    
|-------------|-----------------------------
|Anna         |Junior Manual QA engineer    
|Vadim        |Junior Manual QA engineer    
|Anton        |Middle Manual QA engineer    
|Erik         |Senior Manual QA engineer    
|Jack         |Junior Manual QA engineer    
|Samuel       |Junior Manual QA engineer    
|Matthew      |Middle Manual QA engineer    
|David        |Middle Manual QA engineer    
|Luke         |Senior Manual QA engineer    
|Leo          |Senior Manual QA engineer    
|Ellie        |Junior Automation QA engineer
|Violet       |Middle Automation QA engineer
|Lucy         |Senior Automation QA engineer
*Всего* | *13*

10. Вывести имена и должность ручных QA инженеров.

|employee_name|role_name                
|-------------|-------------------------
|Anna         |Junior Manual QA engineer
|Vadim        |Junior Manual QA engineer
|Anton        |Middle Manual QA engineer
|Erik         |Senior Manual QA engineer
|Jack         |Junior Manual QA engineer
|Samuel       |Junior Manual QA engineer
|Matthew      |Middle Manual QA engineer
|David        |Middle Manual QA engineer
|Luke         |Senior Manual QA engineer
|Leo          |Senior Manual QA engineer
*Всего* | *10*

11. Вывести имена и должность автоматизаторов QA

|employee_name|role_name                    
|-------------|-----------------------------
|Ellie        |Junior Automation QA engineer
|Violet       |Middle Automation QA engineer
|Lucy         |Senior Automation QA engineer
*Всего* | *3*

12. Вывести имена и зарплаты Junior специалистов

|employee_name|monthly_salary
|-------------|--------------
|Victor       |          1100
|Anna         |          1400
|Vadim        |          1750
|Anton        |        [NULL]
|Oliver       |           700
|James        |          1850
|Lucas        |        [NULL]
|Jack         |        [NULL]
|Samuel       |        [NULL]
|Ellie        |        [NULL]
*Всего* | *10*

13. Вывести имена и зарплаты Middle специалистов

|employee_name|monthly_salary
|-------------|--------------
|Alex         |          1000
|Sergey       |          1750
|Anton        |          1850
|Victor       |        [NULL]
|Alexander    |        [NULL]
|Sophia       |        [NULL]
|Matthew      |        [NULL]
|David        |          1000
|Violet       |        [NULL]
*Всего* | *9*

14. Вывести имена и зарплаты Senior специалистов

|employee_name|monthly_salary
|-------------|--------------
|Elena        |          2100
|Erik         |        [NULL]
|Dmitry       |          2300
|Andrey       |        [NULL]
|George       |        [NULL]
|Max          |        [NULL]
|Maya         |        [NULL]
|Jacob        |        [NULL]
|Luke         |           900
|Leo          |          1100
|Lucy         |        [NULL]
*Всего* | *11*

15. Вывести зарплаты Java разработчиков

|monthly_salary|role_name            
|--------------|---------------------
|          1100|Junior Java developer
|          2100|Senior Java developer
|          1750|Middle Java developer
*Всего* | *3*

16. Вывести зарплаты Python разработчиков

|monthly_salary|role_name              
|--------------|-----------------------
|          1000|Middle Python developer
|          2300|Senior Python developer
*Всего* | *2*

17. Вывести имена и зарплаты Junior Python разработчиков

|employee_name|monthly_salary
|-------------|--------------
|[NULL]       |        [NULL]
*Всего* | *1*

18. Вывести имена и зарплаты Middle JS разработчиков

|employee_name|monthly_salary
|-------------|--------------
|Alexander    |        [NULL]
|Sophia       |        [NULL]
*Всего* | *2*

19. Вывести имена и зарплаты Senior Java разработчиков

|employee_name|monthly_salary
|-------------|--------------
|Elena        |          2100
|George       |        [NULL]
|Max          |        [NULL]
*Всего* | *3*

20. Вывести зарплаты Junior QA инженеров

|monthly_salary|
|--------------|
|          1400|
|          1750|
*Всего* *2* | 

21. Вывести среднюю зарплату всех Junior специалистов

|avg                  |
|---------------------|
|1360.0000000000000000|
*Всего* *1* | 

22. Вывести сумму зарплат JS разработчиков

|sum   |
|------|
|  2550|
*Всего* *1* | 

23. Вывести минимальную ЗП QA инженеров

|min   |
|------|
|   900|
*Всего* *1* | 

24. Вывести максимальную ЗП QA инженеров

|max   |
|------|
|  1850|
*Всего* *1* | 

25. Вывести количество QA инженеров

|count |
|------|
|    13|
*Всего* *1* | 

26. Вывести количество Middle специалистов.

|count |
|------|
|     9|
*Всего* *1* | 

27. Вывести количество разработчиков

|count |
|------|
|    17|
*Всего* *1* | 

28. Вывести фонд (сумму) зарплаты разработчиков.

|sum   |
|------|
| 10800|
*Всего* *1* |

29. Вывести имена, должности и ЗП всех специалистов по возрастанию

employee_name | role_name                     | monthly_salary 
---------------|-------------------------------|----------------
 Alex          | Middle Python developer       |          1,000 
 Alexander     | Middle JavaScript developer   |         [NULL] 
 Alice         | [NULL]                        |         [NULL] 
 Allison       | [NULL]                        |         [NULL] 
 Andrey        | Senior Python developer       |         [NULL] 
 Anna          | Junior Manual QA engineer     |          1,400 
 Anton         | Middle Manual QA engineer     |          1,850 
 Anton         | Junior Java developer         |         [NULL] 
 Aria          | Designer                      |          2,200 
 Bella         | [NULL]                        |         [NULL] 
 Clara         | [NULL]                        |         [NULL] 
 David         | Middle Manual QA engineer     |          1,000 
 Dmitry        | Senior Python developer       |          2,300 
 Dominic       | [NULL]                        |         [NULL] 
 Elena         | Senior Java developer         |          2,100 
 Elena         | Designer                      |          1,500 
 Ellie         | Junior Automation QA engineer |         [NULL] 
 Erik          | Senior Manual QA engineer     |         [NULL] 
 Eva           | [NULL]                        |         [NULL] 
 George        | Senior Java developer         |         [NULL] 
 Henry         | CEO                           |          4,100 
 Jack          | Junior Manual QA engineer     |         [NULL] 
 Jacob         | Senior JavaScript developer   |         [NULL] 
 James         | Junior JavaScript developer   |          1,850 
 Jordan        | [NULL]                        |         [NULL] 
 Leo           | Senior Manual QA engineer     |          1,100 
 Leonardo      | [NULL]                        |         [NULL] 
 Lily          | Sales manager                 |          2,350 
 Lucas         | Junior JavaScript developer   |         [NULL] 
 Lucy          | Senior Automation QA engineer |         [NULL] 
 Luke          | Senior Manual QA engineer     |            900 
 Luna          | Designer                      |          2,000 
 Marcus        | Project Manager               |         [NULL] 
 Matthew       | Middle Manual QA engineer     |         [NULL] 
 Max           | Senior Java developer         |         [NULL] 
 Maya          | Senior JavaScript developer   |         [NULL] 
 Milana        | [NULL]                        |          1,500 
 Naomi         | [NULL]                        |         [NULL] 
 Nora          | Sales manager                 |          1,620 
 Olga          | [NULL]                        |          1,700 
 Oliver        | Junior JavaScript developer   |            700 
 Penelope      | HR                            |          1,600 
 Samantha      | [NULL]                        |         [NULL] 
 Samuel        | Junior Manual QA engineer     |         [NULL] 
 Scarlett      | HR                            |          1,200 
 Sergey        | Middle Java developer         |          1,750 
 Sophia        | Middle JavaScript developer   |         [NULL] 
 Vadim         | Junior Manual QA engineer     |          1,750 
 Valentina     | [NULL]                        |          2,800 
 Vera          | Sales manager                 |         [NULL] 
 Victor        | Junior Java developer         |          1,100 
 Victor        | Middle Java developer         |         [NULL] 
 Violet        | Middle Automation QA engineer |         [NULL] 
*Всего* | *53*

30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

|employee_name|role_name                  |monthly_salary
|-------------|---------------------------|--------------
|Olga         |[NULL]                     |          1700
|Sergey       |Middle Java developer      |          1750
|Vadim        |Junior Manual QA engineer  |          1750
|Anton        |Middle Manual QA engineer  |          1850
|James        |Junior JavaScript developer|          1850
|Luna         |Designer                   |          2000
|Elena        |Senior Java developer      |          2100
|Aria         |Designer                   |          2200
|Dmitry       |Senior Python developer    |          2300 
*Всего* | *9*

31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

employee_name | role_name                   | monthly_salary 
---------------|-----------------------------|----------------
 Oliver        | Junior JavaScript developer |            700 
 Luke          | Senior Manual QA engineer   |            900 
 Alex          | Middle Python developer     |          1,000 
 David         | Middle Manual QA engineer   |          1,000 
 Victor        | Junior Java developer       |          1,100 
 Leo           | Senior Manual QA engineer   |          1,100 
 Scarlett      | HR                          |          1,200 
 Anna          | Junior Manual QA engineer   |          1,400 
 Elena         | Designer                    |          1,500 
 Milana        | [NULL]                      |          1,500 
 Penelope      | HR                          |          1,600 
 Nora          | Sales manager               |          1,620 
 Olga          | [NULL]                      |          1,700 
 Sergey        | Middle Java developer       |          1,750 
 Vadim         | Junior Manual QA engineer   |          1,750 
 Anton         | Middle Manual QA engineer   |          1,850 
 James         | Junior JavaScript developer |          1,850 
 Luna          | Designer                    |          2,000 
 Elena         | Senior Java developer       |          2,100 
 Aria          | Designer                    |          2,200 
*Всего* | *20*

32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

employee_name | role_name                 | monthly_salary 
---------------|---------------------------|----------------
 Victor        | Junior Java developer     |          1,100 
 Leo           | Senior Manual QA engineer |          1,100 
 Elena         | Designer                  |          1,500 
 Milana        | [NULL]                    |          1,500 
 Luna          | Designer                  |          2,000 
*Всего* | *5*
