USE codeup_test_db;
DROP TABLE IF EXISTS album;
CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name  VARCHAR(100) NOT NULL,
    release_date VARCHAR(50),
    sales  VARCHAR(100) NOT NULL,
    genre TEXT NOT NULL,
    PRIMARY KEY (id)
)