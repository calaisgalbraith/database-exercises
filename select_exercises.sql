-- Remember to USE the codeup_test_db.
USE codeup_test_db;

SELECT name AS 'The name of all albums by Pink Floyd:' FROM albums WHERE artist = 'Pink Floyd';

SELECT '' as '';
SELECT release_date AS 'The year Sgt. Pepper''s Lonley Hearts Club Band was released:' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT '' as '';
SELECT genre AS 'The genre for Nevermind:'FROM albums WHERE name = 'Nevermind';

SELECT '' as '';
SELECT name AS 'Albums that were released in the 1990s:' FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT '' as '';
SELECT name AS 'Albums that had less than 20 million certified sales:' FROM albums WHERE sales < 20.0;

SELECT '' as '';
SELECT name AS  'All the albums with a genre of "rock":' FROM albums WHERE genre = 'rock';