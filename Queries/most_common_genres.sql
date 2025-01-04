--Find the Most Common Genres (Listed In)
SELECT listed_in, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;
