SELECT count(title) as Count, directors
FROM `sql-sandbox-20240505.DataAnalytics.imdb-movie-dataset`
GROUP BY directors
HAVING count(title) >= 10
ORDER BY Count DESC

-- 83 rows
