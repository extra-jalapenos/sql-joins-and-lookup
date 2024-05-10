-- Produce a list of all the customers and the average margin per order they generated, sorted in descending order. Who generated the highest margin per order?

SELECT
	CONCAT(first_name, " ", last_name) AS full_name,
	order_id,
	AVG(retail_price - cost) AS margin
FROM `bigquery-public-data.thelook_ecommerce.users` AS users
LEFT JOIN `bigquery-public-data.thelook_ecommerce.order_items` AS order_items
ON users.id=order_items.user_id
LEFT JOIN `bigquery-public-data.thelook_ecommerce.products` AS products
ON order_items.product_id=products.id
GROUP BY full_name, order_id
ORDER BY margin DESC
LIMIT 1

-- full_name	order_id	margin
-- Eric Small	123646	594.4049988090992
