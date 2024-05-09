SELECT count(title) as Count, directors
FROM `sql-sandbox-20240505.DataAnalytics.imdb-movie-dataset`
GROUP BY directors
ORDER BY Count DESC
LIMIT 3

-- Count	directors
-- 30	Woody Allen
-- 29	Steven Soderbergh
-- 26	Clint Eastwood
