--creating netflix database
--CREATE DATABASE netflix

-- creating the table with the attributes
CREATE TABLE netflix_titles (
    show_id VARCHAR(10) NOT NULL PRIMARY KEY,
    media_type VARCHAR(50), 
    title VARCHAR(255),
    director VARCHAR(255),
    actors TEXT,
    country VARCHAR(255),
    date_added DATE,
    release_year INT,
    rating VARCHAR(10),
    duration VARCHAR(50),
    listed_in TEXT,
    description TEXT
);

select * from netflix_titles

