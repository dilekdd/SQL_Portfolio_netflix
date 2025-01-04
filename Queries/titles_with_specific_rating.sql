--Find Titles with a Specific Rating
SELECT title, media_type, release_year
FROM netflix_titles
WHERE rating = 'TV-MA'
ORDER BY release_year DESC;
