USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    album_name  VARCHAR(100) NOT NULL DEFAULT 'untitled',
    release_date INT UNSIGNED,
    genre VARCHAR (50)NOT NULL DEFAULT 'untitled',
    sales  FLOAT UNSIGNED,
    PRIMARY KEY (id)
)