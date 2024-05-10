-- Return a table containing all the customers' full names in the first column and the count of how many orders they made in their history in the second column. Sort them by the second column in descending order. What is the name of the customer that made the highest number of orders? 
SELECT CONCAT(first_name, " ", last_name) AS full_name, count(orders) AS order_count
FROM `bigquery-public-data.thelook_ecommerce.users` as users
LEFT JOIN `bigquery-public-data.thelook_ecommerce.orders` AS orders
ON users.id=orders.user_id
GROUP BY full_name
ORDER BY order_count DESC

-- Michael Smith with 75 orders
