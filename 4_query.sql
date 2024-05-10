-- Now modify the query to show only the customers that made more than ten orders. How many are they (you can count the number of rows)?
SELECT CONCAT(first_name, " ", last_name) AS full_name, count(orders) AS order_count
FROM `bigquery-public-data.thelook_ecommerce.users` as users
LEFT JOIN `bigquery-public-data.thelook_ecommerce.orders` AS orders
ON users.id=orders.user_id
GROUP BY full_name
HAVING order_count >= 10
ORDER BY order_count DESC

-- 845
