/*
6 - Room Availability by City: Determine cities with the highest average number of rooms left.
*/

WITH CityAvailability AS (
	SELECT city, AVG(rooms_left) AS avg_rooms_left
	FROM hotels
	GROUP BY city
)

SELECT *
FROM CityAvailability
ORDER BY avg_rooms_left DESC;