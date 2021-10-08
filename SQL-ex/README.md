# My solutions for SQL-ex.ru tasks
1. ```sh
SELECT model, speed, hd
FROM PC
WHERE Price < 500;
```
1. ```sh
SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer';
```
1. ```sh
SELECT model, ram, screen
FROM Laptop
WHERE price > 1000;
```
1. ```sh
SELECT *
FROM Printer
WHERE color = 'y';
```
1. ```sh
SELECT model, speed, hd
FROM PC
WHERE price < 600 AND cd = '12x' OR price < 600 AND cd = '24x';
```
1. ```sh
select distinct Product.maker, Laptop.speed
from Laptop
inner join Product
on Product.model = Laptop.model
where Laptop.hd >= 10;
```
1. ```sh
select distinct PC.model, PC.price
from Product
inner join PC
on Product.model = PC.model
where Product.maker like '%B%'
union all
select distinct Laptop.model, Laptop.price
from Product
inner join Laptop
on Product.model = Laptop.model
where Product.maker like '%B%'
union all
select distinct Printer.model, Printer.price
from Product
inner join Printer
on Product.model = Printer.model
where Product.maker like '%B%';
```
1. ```sh
select distinct maker
from Product
where type in ('PC')
except
select distinct maker
from Product
where type in ('Laptop');
```
1. ```sh
select distinct maker
from Product p
join PC
on PC.model = p.model
where speed >= 450;
```
1. ```sh
select model, price
from Printer
where price = (
select max(price)
from Printer
);
```
1. ```sh

```
1. ```sh

```
1. ```sh

```
1. ```sh

```
1. ```sh

```
