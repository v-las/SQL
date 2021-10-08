# My solutions for SQL-ex.ru tasks
1.
```sh
SELECT model, speed, hd
FROM PC
WHERE Price < 500;
```
1.
```sh
SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer';
```
1.
```sh
SELECT model, ram, screen
FROM Laptop
WHERE price > 1000;
```
1.
```sh
SELECT *
FROM Printer
WHERE color = 'y';
```
1.
```sh
SELECT model, speed, hd
FROM PC
WHERE price < 600 AND cd = '12x' OR price < 600 AND cd = '24x';
```
1.
```sh
SELECT DISTINCT Product.maker, Laptop.speed
FROM Laptop
JOIN Product
ON Product.model = Laptop.model
WHERE Laptop.hd >= 10;
```
1.
```sh
SELECT DISTINCT PC.model, PC.price
FROM Product
JOIN PC
ON Product.model = PC.model
WHERE Product.maker LIKE '%B%'
UNION ALL
SELECT DISTINCT Laptop.model, Laptop.price
FROM Product
JOIN Laptop
ON Product.model = Laptop.model
WHERE Product.maker LIKE '%B%'
UNION ALL
SELECT DISTINCT Printer.model, Printer.price
FROM Product
JOIN Printer
ON Product.model = Printer.model
WHERE Product.maker LIKE '%B%';
```
1.
```sh
SELECT DISTINCT maker
FROM Product
WHERE type in ('PC')
EXCEPT
SELECT DISTINCT maker
FROM Product
WHERE type in ('Laptop');
```
1.
```sh
SELECT DISTINCT maker
FROM Product p
JOIN PC
ON PC.model = p.model
WHERE speed >= 450;
```
1.
```sh
SELECT model, price
FROM Printer
WHERE price = (
SELECT MAX(price)
FROM Printer
);
```
1.
```sh
SELECT AVG(speed)
FROM PC;
```
1.
```sh
SELECT AVG(speed) as AVG_speed
FROM Laptop
WHERE price > 1000;
```
1.
```sh
SELECT AVG(PC.speed) as AVG_speed
FROM PC
JOIN Product p
ON p.model = PC.model
WHERE p.maker = 'A';
```
1.
```sh
SELECT Classes.class, Ships.name, Classes.country
FROM Classes
JOIN Ships
ON Classes.class = Ships.class
WHERE numGuns >= 10;
```
1.
```sh
SELECT hd
FROM PC
GROUP by hd
HAVING COUNT(model) > 1;
```
