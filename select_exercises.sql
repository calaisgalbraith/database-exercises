--Remember to USE the codeup_test_db.
USE codeup_test_db;

-- Write queries to find the following information. Before each item, output a caption explaining the results:

PRINT 'The name of all albums by Pink Floyd: ';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

PRINT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released: ';
SELECT release_date FROM albums WHERE name = ' Sgt. Pepper''s Lonely Hearts Club Band';

PRINT 'The genre for Nevermind: ';
SELECT genre FROM albums WHERE name = 'Nevermind';

PRINT 'Albums that were released in the 1990s: ';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

PRINT 'Albums that had less than 20 million certified sales: ';
SELECT name FROM albums WHERE sales < 20.0;

--Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
PRINT 'All the albums with a genre of "Rock": ';
SELECT name FROM albums WHERE genre = 'rock';