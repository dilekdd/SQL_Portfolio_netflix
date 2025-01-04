--List All Countries Represented in the Dataset
SELECT DISTINCT country
FROM netflix_titles
WHERE country IS NOT NULL
ORDER BY country;