/*
1 - Top Rated Hotels: Which hotels have the highest scores?
*/

SELECT TOP 10 hotel_name, city, ROUND(score,2)
FROM hotels
ORDER BY score DESC;

