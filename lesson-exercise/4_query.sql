SELECT AVG(IMDb_rating) AS Rating, COUNT(title) As Movie_Count, directors
FROM `sql-sandbox-20240505.DataAnalytics.imdb-movie-dataset`
GROUP BY directors
HAVING Movie_Count >= 5
ORDER BY Rating DESC
LIMIT 3
