/*
8 - Impact of Review Count on Score: Determine if there's a correlation between the number of reviews and the average score.
*/

WITH ReviewRanges AS (
    SELECT 
        CASE 
            WHEN reviews BETWEEN 0 AND 1000 THEN '0-1000'
            WHEN reviews BETWEEN 1001 AND 5000 THEN '1001-5000'
            WHEN reviews BETWEEN 5001 AND 10000 THEN '5001-10000'
            WHEN reviews BETWEEN 10001 AND 20000 THEN '10001-20000'
            WHEN reviews > 20000 THEN '20001+'
        END AS review_range,
        score
    FROM hotels
),
ReviewScoreCorrelation AS (
    SELECT 
        review_range,
        AVG(score) AS avg_score,
        COUNT(*) AS hotel_count
    FROM ReviewRanges
    GROUP BY review_range
)
SELECT review_range, avg_score, hotel_count
FROM ReviewScoreCorrelation
ORDER BY review_range;


