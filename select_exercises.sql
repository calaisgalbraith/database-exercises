-- Remember to USE the codeup_test_db.
USE codeup_test_db;

-- Write queries to find the following information. Before each item, output a caption explaining the results:

SELECT 'The name of all albums by Pink Floyd:' as ' ';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released:' as ' ';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind:' as ' ';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums that were released in the 1990s:' as ' ';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums that had less than 20 million certified sales:' as ' ';
SELECT name FROM albums WHERE sales < 20.0;

-- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT 'All the albums with a genre of "Rock":' as ' ';
SELECT name FROM albums WHERE genre = 'rock';