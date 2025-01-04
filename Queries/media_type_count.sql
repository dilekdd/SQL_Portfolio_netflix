--Count Movies and TV Shows Separately

SELECT media_type, COUNT(*) AS total
FROM netflix_titles
GROUP BY media_type;
