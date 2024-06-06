/*
2 - Average Score by City: Identify cities with the highest average hotel scores.
*/

WITH CityScores AS (
	SELECT city, ROUND(AVG(score),2) AS avg_score
	FROM hotels
	GROUP BY city
)

SELECT city, avg_score
FROM CityScores
ORDER BY avg_score DESC;

