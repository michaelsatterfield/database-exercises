USE codeup_test_db;
SELECT 'All albums in your table.' AS 'Exercise';
SELECT * FROM albums;


-- SELECT 'Make all the albums 10 times more popular' AS 'Exercise';
-- UPDATE albums
-- SET sales = sales*10;
-- SELECT * FROM albums;



SELECT 'All albums released before 1980' AS 'Exercise';
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'Move all the albums before 1980 back to the 1800s.' AS 'Exercise';
-- UPDATE albums
-- SET release_date = release_date - 100
-- WHERE release_date < 1980;
-- SELECT * FROM albums;


SELECT 'Change ''Michael Jackson'' to ''Peter Jackson''' AS 'Exercise';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums;

