--Determine the Most Recent Titles for Each Country

WITH expanded_countries AS (
    SELECT 
        TRIM(country_split) AS country,
        title,
        release_year
    FROM netflix_titles,
         UNNEST(STRING_TO_ARRAY(country, ',')) AS country_split
    WHERE country IS NOT NULL AND TRIM(country_split) <> ''
),
ranked_titles AS (
    SELECT 
        country,
        title,
        release_year,
        ROW_NUMBER() OVER (PARTITION BY country ORDER BY release_year DESC) AS rank
    FROM expanded_countries
)
SELECT 
    country, 
    title, 
    release_year AS most_recent_year
FROM ranked_titles
WHERE rank = 1
ORDER BY most_recent_year DESC, country ASC;
