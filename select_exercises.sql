USE codeup_test_db;
SELECT 'The name of all albums by Pink Floyd.' AS 'Exercise';

SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Exercise';
SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Exercise';
SELECT genre FROM albums WHERE album_name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'Exercise';
SELECT album_name FROM albums WHERE release_date BETWEEN '1990' AND '2000';

SELECT 'Which albums had less than 20 million certified sales' AS 'Exercise';
SELECT album_name FROM albums WHERE sales < '20';

SELECT 'All the albums with a genre of "Rock"' AS 'Exercise';
SELECT * FROM albums WHERE genre = 'Rock';