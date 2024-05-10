-- Use a Left Join to connect the order-item table and the products table; what are the top 3 products in terms of average margin?

SELECT products.id As ID, name,
	AVG(ROUND(retail_price - cost, 2)) as margin
FROM `bigquery-public-data.thelook_ecommerce.order_items` AS order_items
LEFT JOIN `bigquery-public-data.thelook_ecommerce.products` AS products
ON order_items.product_id=products.id
GROUP BY products.id, name
ORDER BY margin DESC
LIMIT 3

-- ID	name	margin
-- 24447	Darla	594.4
-- 24341	Nobis Yatesy Parka	568.1
-- 23654	The North Face Apex Bionic Soft Shell Jacket - Men's	539.99
