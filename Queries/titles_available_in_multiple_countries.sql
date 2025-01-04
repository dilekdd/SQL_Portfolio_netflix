--Find Titles Available in Multiple Countries
WITH expanded_countries AS (
    SELECT 
        nt.title, 
        TRIM(uc.country) AS country
    FROM netflix_titles nt, 
         UNNEST(STRING_TO_ARRAY(nt.country, ',')) AS uc(country)
    WHERE nt.country IS NOT NULL
)
SELECT 
    title, 
    COUNT(DISTINCT country) AS country_count
FROM expanded_countries
GROUP BY title
HAVING COUNT(DISTINCT country) > 1
ORDER BY country_count DESC;



