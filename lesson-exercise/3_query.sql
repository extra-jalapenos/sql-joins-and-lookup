SELECT AVG(IMDb_rating) AS Rating, directors
FROM `sql-sandbox-20240505.DataAnalytics.imdb-movie-dataset`
GROUP BY directors
ORDER BY Rating DESC
LIMIT 3

-- Rating	directors
-- 9.1	"Ram Mohan,Yûgô Sakô,Koichi Saski"
-- 8.7	Eli King
-- 8.7	Shoojit Sircar
