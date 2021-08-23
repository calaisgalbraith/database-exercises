--At the top of albums_seeder.sql be sure to USE the codeup_test_db database.
USE codeup_test_db;

--Refactor to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.
INSERT INTO ALBUMS(artist, name, release_date, sales, genre)
VALUES('Fleetwood Mac', 'Rumors', 1977, 27.9, 'soft rock'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 23.0, 'Pop'),
       ('Madonna', 'The Immaculate Collection', 1990, 19.5, 'Pop'),
       ('The Beatles', '1', 2000, 23.5, 'Rock'),
       ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country');

--Note that running the albums_seeder.sql multiple times will generate duplicate data
--First write your queries as separate INSERT statements for each record and test. You should see no output.
    -- INSERT INTO ALBUMS(artist, name, release_date, sales, genre)
    -- VALUES('Fleetwood Mac', 'Rumors', 1977, 27.9, 'soft rock');

    -- INSERT INTO ALBUMS(artist, name, release_date, sales, genre)
    -- VALUES('ABBA', 'Gold: Greatest Hits', 1992, 23.0, 'Pop');

    -- INSERT INTO ALBUMS(artist, name, release_date, sales, genre)
    -- VALUES('Madonna', 'The Immaculate Collection', 1990, 19.5, 'Pop');

    -- INSERT INTO ALBUMS(artist, name, release_date, sales, genre)
    -- VALUES('The Beatles', '1', 2000, 23.5, 'Rock');

    -- INSERT INTO ALBUMS(artist, name, release_date, sales, genre)
    -- VALUES('Shania Twain', 'Come On Over', 1997, 29.6, 'Country');
