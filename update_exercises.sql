USE codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:
-- After each SELECT add an UPDATE statement to:

-- Select: All albums in your table.
    SELECT 'All Albums:' as ' ';
    SELECT name FROM albums;

-- Update: Make all the albums 10 times more popular (sales * 10)
    UPDATE albums
    Set sales = sales * 10;

-- Select: All albums released before 1980
    SELECT 'All Albums Released Before 1980:' as ' ';
    SELECT name FROM albums WHERE release_date < 1980;

-- Update: Move all the albums before 1980 back to the 1800s.
    UPDATE albums
    SET release_date = 1880
    WHERE  release_date < 1980;

-- Select: All albums by Michael Jackson
    SELECT 'All Albums:' as ' ';
    SELECT name FROM albums WHERE artist = 'Michael Jackson';

-- Update: Change 'Michael Jackson' to 'Peter Jackson'
    UPDATE albums
    SET artist = 'Peter Jackson'
    WHERE artist = 'Michael Jackson';

-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.
    SELECT * FROM albums;