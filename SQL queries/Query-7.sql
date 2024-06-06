/*
7 - Review Rate Distribution: Show the distribution of hotels across different review rates.
*/

WITH ReviewRateDistribution AS (
	SELECT review_rate, COUNT(*) AS count_rate
	FROM hotels
	GROUP BY review_rate
)

SELECT *
FROM ReviewRateDistribution
ORDER BY count_rate DESC;