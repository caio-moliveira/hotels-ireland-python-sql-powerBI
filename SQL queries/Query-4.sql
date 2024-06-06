/*
4 - Hotels with Free Cancellation and High Scores: Find high-scoring hotels that offer free cancellation.
*/

WITH FreeCancellationHotels AS (
	SELECT hotel_name, city, ROUND(score,2) as score
	FROM hotels
	WHERE Free_cancellation = 'Free cancellation'
)

SELECT *
FROM FreeCancellationHotels
ORDER BY score DESC;