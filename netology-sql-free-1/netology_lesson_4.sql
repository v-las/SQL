SELECT t1.product_id, sum / price
	FROM (
		SELECT opl.product_id, sum(o.amount)
		FROM orders AS o
		JOIN order_product_list AS opl
			ON o.order_id = opl.order_id
		GROUP BY opl.product_id
	) AS t1
	JOIN (
		SELECT product_id, price
			FROM product AS p
	) AS t2
		ON t1.product_id = t2.product_id
		
