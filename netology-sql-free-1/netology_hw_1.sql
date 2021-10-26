SELECT *
	FROM orders AS o
	
SELECT *
	FROM product AS p
	ORDER BY product DESC
	
SELECT *
	FROM category AS c
--	WHERE categor
	ORDER BY category

--Какое количество платежей было совершено

SELECT count(order_id)
	FROM orders AS o
--	GROUP BY order_id
	
--Какое количество товаров находится в категории “Игрушки”
	
SELECT count(p.product_id)
	FROM product AS p
	JOIN category AS c
		ON p.category_id = c.category_id
	WHERE c.category = 'Игрушки'
--	ORDER BY c.category
	
--В какой категории находится больше всего товаров
	
SELECT c.category, count(p.product_id)
	FROM product AS p
	JOIN category AS c
		ON p.category_id = c.category_id
--	WHERE count(p.product_id) = (
--		SELECT count(p.product_id)
--			FROM 
--	)	
	GROUP BY c.category
	HAVING 
	ORDER BY count(p.product_id) DESC 
	
--Сколько “Черепах” купила Williams Linda?
	
SELECT *
	FROM customer AS c
	WHERE first_name = 'Linda'
		AND last_name = 'Williams'
		
SELECT opl.amount
	FROM product AS p
	JOIN order_product_list AS opl 
		ON p.product_id = opl.product_id
	JOIN orders AS o
		ON o.order_id = opl.order_id
	JOIN customer AS c
		ON c.customer_id = o.customer_id
	WHERE c.first_name = 'Linda'
		AND c.last_name = 'Williams'
		AND p.product ILIKE '%черепа%'
		
--С кем живет Williams Linda?
		
SELECT *
	FROM staff AS s
	JOIN address AS a
		ON s.address_id = a.address_id
	
SELECT a.address, concat(s.first_name, ' ', s.last_name), concat(c.first_name, ' ', c.last_name)
	FROM address AS a
	JOIN customer AS c
		ON c.address_id = a.address_id
	JOIN staff AS s
		ON s.address_id = a.address_id
--	GROUP BY a.address_id
--	WHERE a.address ILIKE '%692%'
--		AND a.address ILIKE '%joliet%'
	