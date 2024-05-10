-- Use a Left Join to connect the orders table to the users table and return all variables from both tables.
SELECT *
FROM `bigquery-public-data.thelook_ecommerce.users` as users
LEFT JOIN `bigquery-public-data.thelook_ecommerce.orders` AS orders
ON users.id=orders.user_id
