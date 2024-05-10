-- Using one query, join together the users table to the order-item and products tables; show all the variables from the three tables.

SELECT *
FROM `bigquery-public-data.thelook_ecommerce.users` AS users
LEFT JOIN `bigquery-public-data.thelook_ecommerce.order_items` AS order_items
ON users.id=order_items.user_id
LEFT JOIN `bigquery-public-data.thelook_ecommerce.products` AS products
ON order_items.product_id=products.id
