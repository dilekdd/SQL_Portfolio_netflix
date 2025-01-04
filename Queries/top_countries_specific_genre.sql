--Find Top Countries Producing Content for a Specific Genre
SELECT country, COUNT(*) AS total_titles
FROM netflix_titles
WHERE listed_in ILIKE '%Drama%' AND country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 5;

