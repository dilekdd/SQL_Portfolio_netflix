--Find the Oldest Titles in the Dataset

SELECT title, release_year
FROM netflix_titles
ORDER BY release_year ASC
LIMIT 5;
