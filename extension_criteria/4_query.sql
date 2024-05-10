-- Highest margin per order of customers with at least 4 orders

SELECT
	CONCAT(first_name, " ", last_name) AS full_name,
	order_id,
	COUNT(order_id) AS order_count,
	AVG(retail_price - cost) AS margin
FROM `bigquery-public-data.thelook_ecommerce.users` AS users
LEFT JOIN `bigquery-public-data.thelook_ecommerce.order_items` AS order_items
ON users.id=order_items.user_id
LEFT JOIN `bigquery-public-data.thelook_ecommerce.products` AS products
ON order_items.product_id=products.id
GROUP BY full_name, order_id
HAVING order_count >= 4
ORDER BY margin DESC
LIMIT 1

-- full_name	order_id	order_count	margin
-- Victoria Bryant	9240	4	174.65021563322688
