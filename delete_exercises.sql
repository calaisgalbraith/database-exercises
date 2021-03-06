USE codeup_test_db;
-- Write SELECT statements
-- Convert the SELECT statements to DELETE.

    SELECT Albums released after 1991
    SELECT 'Albums released after 1991:' as ' ';
    SELECT * FROM albums WHERE release_date > 1991;
--
    SELECT 'Albums released after 1991:' as ' ';
    DELETE FROM albums WHERE release_date > 1991;
--
    SELECT Albums with the genre 'disco'
    SELECT 'Albums with the genre ''disco'':' as ' ';
    SELECT * FROM albums WHERE genre = 'disco';
--
    SELECT 'Albums with the genre ''disco'':' as ' ';
    DELETE FROM albums WHERE genre = 'disco';
--
    SELECT Albums by 'Whitney Houston' (...or maybe an artist of your choice)
    SELECT 'Albums by ''The Beatles'':' as ' ';
    SELECT * FROM albums WHERE artist = 'The Beatles';
--
    SELECT 'Albums by ''The Beatles'':' as ' ';
    DELETE FROM albums WHERE artist = 'The Beatles';