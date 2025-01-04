--Find the Longest Movies

SELECT title, duration
FROM netflix_titles
WHERE media_type = 'Movie' AND duration ~ 'min'
ORDER BY CAST(SPLIT_PART(duration, ' ', 1) AS INTEGER) DESC
LIMIT 5;
