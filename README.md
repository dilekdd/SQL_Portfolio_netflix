### **About this Dataset**

Netflix is one of the most popular media and video streaming platforms. They have over 8000 movies or TV shows available on their platform. As of mid-2021, they have over 200M Subscribers globally.

This tabular dataset consists of listings of all the movies and TV shows available on Netflix, along with details such as cast, directors, ratings, release year, duration, etc.

Link to the dataset: https://www.kaggle.com/datasets/shivamb/netflix-shows

---

### **Requirements**
- **PostgreSQL**:
  - This project uses PostgreSQL to store and query the dataset.
  - Version: The dump file was created using PostgreSQL version 17.x. It is recommended to use the same or a compatible version to avoid issues during restoration.
  - PostgreSQL is a free and open-source database system. You can download it [here](https://www.postgresql.org/download/).

---

### **Database Setup**
1. **Install PostgreSQL**:
   - If you don’t have PostgreSQL installed, follow the [official installation guide](https://www.postgresql.org/download/).

2. **Create a Database**:
   - Create a database where the dataset will be restored:
     ```bash
     psql -U your_username
     CREATE DATABASE netflix;
     \q
     ```

3. **Restore the Database**:
   - Use the provided `netflix_dump.sql` file to restore the database:
     ```bash
     psql -U your_username -d netflix -f netflix_dump.sql
     ```

---

### **How to Run**
1. **Connect to the Database**:
   - Open your terminal and connect to the `netflix` database:
     ```bash
     psql -U your_username -d netflix
     ```

2. **Execute Queries**:
   - To execute queries directly, use:
     ```sql
     SELECT * FROM netflix_titles LIMIT 10;
     ```

   - Or execute queries from a file:
     ```bash
     \i path_to_query.sql
     ```

---

### **Content**
- **Queries**: Contains the SQL scripts for data analysis.
- **Outputs**: Contains the results of the SQL queries in CSV format.

---

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
