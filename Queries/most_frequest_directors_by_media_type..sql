--Identify the Most Frequent Directors by Media Type
SELECT 
    director, 
    media_type, 
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director, media_type
ORDER BY total_titles DESC
LIMIT 10;

