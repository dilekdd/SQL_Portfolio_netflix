--Search Titles with Specific Keywords in Their Description
SELECT title, media_type, description
FROM netflix_titles
WHERE description ILIKE '%thriller%';