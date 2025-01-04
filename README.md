### **About this Dataset**

 Netflix is one of the most popular media and video streaming platforms. They have over 8000 movies or tv shows available on their platform, as of mid-2021, they have over 200M Subscribers globally. 
 
 This tabular dataset consists of listings of all the movies and tv shows available on Netflix, along with details such as - cast, directors, ratings, release year, duration, etc.

 Link to the dataset: https://www.kaggle.com/datasets/shivamb/netflix-shows 



 ### **Data Dictionary**

| **Column Name**       | **Data Type**    | **Description**                                                                                           |
|------------------------|------------------|-----------------------------------------------------------------------------------------------------------|
| `show_id`             | `VARCHAR`       | Unique identifier for each title.                                                                         |
| `media_type`          | `VARCHAR`       | Type of content, either "Movie" or "TV Show".                                                             |
| `title`               | `VARCHAR`       | Title of the movie or TV show.                                                                            |
| `director`            | `VARCHAR`       | Name(s) of the director(s). `NULL` if no director is listed.                                              |
| `actors`              | `TEXT`          | Comma-separated list of actors in the title. `NULL` if no actors are listed.                              |
| `country`             | `VARCHAR`       | Country where the title was produced. Can include multiple countries separated by commas. `NULL` if unknown.|
| `date_added`          | `DATE`          | Date the title was added to Netflix.                                                                      |
| `release_year`        | `INTEGER`       | Year the title was released.                                                                              |
| `rating`              | `VARCHAR`       | Age rating of the title (e.g., TV-MA, PG-13, R).                                                          |
| `duration`            | `VARCHAR`       | Duration of the content. For movies, this is the runtime in minutes (e.g., "98 min"). For TV shows, this is the number of seasons (e.g., "2 Seasons"). |
| `listed_in`           | `TEXT`          | Comma-separated list of genres/categories the title belongs to (e.g., "Dramas, Independent Movies").       |
| `description`         | `TEXT`          | Brief description or summary of the title.                                                               |

---

### **Notes**
1. **Missing Values**:
   - Some columns (e.g., `director`, `actors`, `country`, `date_added`) contain `NULL` values.
   - Missing values typically indicate unavailable or unknown information.

2. **Data Relationships**:
   - `media_type` categorizes the title as either "Movie" or "TV Show".
   - `duration` differs for movies and TV shows:
     - Movies: Duration in minutes (e.g., "90 min").
     - TV Shows: Number of seasons (e.g., "3 Seasons").

3. **Primary Key**:
   - `show_id` serves as the primary key for this dataset, ensuring each record is unique.

4. **Common Use Cases**:
   - Identifying trends in content releases by year or country.
   - Filtering content based on genres (`listed_in`) or ratings (`rating`).
   - Analyzing the popularity of actors and directors.

---

This data dictionary provides an overview of the dataset's structure and can guide you in understanding and analyzing its contents effectively.

### **Content**
Queries: Contains the SQL scripts for data analysis.
Outputs: Contains the results of the SQL queries in CSV format.

### **Database Setup**
To replicate the analysis or run the queries, set up the database using the netflix_dump.sql file:

Restore the database using the netflix_dump.sql file:
psql -U your_username -d your_database_name -f netflix_dump.sql

### **How to Run**
Use the following command to execute a query:

psql -U your_username -d your_database -f path_to_query.sql
