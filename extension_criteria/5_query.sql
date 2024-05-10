-- Write a query that shows the combination of all customers that live in the same city and have different genders.
SELECT
	CONCAT(city, " (", country, "/", state, ")") AS city,
	SUM(CASE WHEN gender = "M" THEN 1 END) AS count_male,
  SUM(CASE WHEN gender = "F" THEN 1 END) AS count_female,
  COUNT(gender) as count_total
FROM `bigquery-public-data.thelook_ecommerce.users` AS users
GROUP BY city
ORDER BY count_total DESC
