USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name  VARCHAR(50) NOT NULL DEFAULT 'untitled',
    release_date INT UNSIGNED,
    sales  FLOAT UNSIGNED,
    genre VARCHAR (20)NOT NULL,
    PRIMARY KEY (id)
)