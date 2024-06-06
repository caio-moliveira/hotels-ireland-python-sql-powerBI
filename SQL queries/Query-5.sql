/*
5 - Price Range Analysis: Analyze the price range for hotels in each city.
*/

WITH CityPrice AS (
	SELECT city, MIN(price) AS min_price, MAX(price) AS max_price, ROUND(AVG(price),2) AS avg_price
	FROM hotels
	GROUP BY city
)

SELECT * , (max_price - min_price) AS diff_price
FROM CityPrice
ORDER BY diff_price DESC, avg_price DESC;