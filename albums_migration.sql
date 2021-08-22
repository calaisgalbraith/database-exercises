USE codeup_test_db;

--Write some SQL to drop a table named albums if it exists.
DROP TABLE IF EXISTS albums;

--TODO: Get it to work in terminal"

--Create table albums
CREATE TABLE IF NOT EXISTS albums(

    id INT UNSIGNED NOT NULL AUTO-INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT NOT NULL,
    sales DECIMAL(6,3) NOT NULL,
    genre VARCHAR(100),
    PRIMARY KEY (id)
)

