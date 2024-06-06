/*
3 - Top 5 Hotels by Score and Review Count: List the top 5 hotels based on a combination of score and review count.
*/

WITH RankHotels AS (
	SELECT hotel_name, city, score, reviews,
			ROW_NUMBER() OVER (ORDER BY score DESC, reviews DESC) AS rank
	FROM hotels
)

SELECT hotel_name, city, score, reviews
FROM RankHotels
WHERE rank <= 5;