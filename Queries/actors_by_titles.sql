--Rank Actors by the Number of Titles They Appear In

SELECT 
    UNNEST(STRING_TO_ARRAY(actors, ', ')) AS actor,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE actors IS NOT NULL
GROUP BY actor
ORDER BY total_titles DESC
LIMIT 10;
