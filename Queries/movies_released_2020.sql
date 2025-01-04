--List All Movies Released in 2020
SELECT title, country, rating, duration
FROM netflix_titles
WHERE media_type = 'Movie' AND release_year = 2020;
