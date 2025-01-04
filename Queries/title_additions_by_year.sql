--Identify Trends in Title Additions by Year
SELECT 
    EXTRACT(YEAR FROM date_added) AS year_added,
    media_type,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY year_added, media_type
ORDER BY year_added;
