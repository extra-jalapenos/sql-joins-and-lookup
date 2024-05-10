-- Write a query that returns a pivot table showing the order status by row and four age brackets
SELECT
	IFNULL(status, "Unknown") AS status,
	SUM(CASE WHEN age < 20 THEN 1 ELSE 0 END) AS under20,
	SUM(CASE WHEN age >= 20 AND age < 40 THEN 1 ELSE 0 END) AS age20_39,
	SUM(CASE WHEN age >= 40 AND age < 60 THEN 1 ELSE 0 END) AS age40_59,
	SUM(CASE WHEN age >= 60 AND age < 89 THEN 1 ELSE 0 END) AS age60_79,
	SUM(CASE WHEN age >=80 THEN 1 ELSE 0 END) AS over80,
	SUM(CASE WHEN age > 0 THEN 1 ELSE 0 END) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.users` as users
LEFT JOIN `bigquery-public-data.thelook_ecommerce.orders` AS orders
ON users.id=orders.user_id
GROUP BY status
