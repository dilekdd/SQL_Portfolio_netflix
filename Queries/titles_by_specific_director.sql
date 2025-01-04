-- Find All Titles Directed by a Specific Director
SELECT title, media_type, release_year
FROM netflix_titles
WHERE director = 'Christopher Nolan';
