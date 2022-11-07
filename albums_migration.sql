USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (id INT NOT NULL AUTO_INCREMENT,
    artist VARCHAR(15) NOT NULL ,
    name VARCHAR(20) NOT NULL ,
    release_date CHAR(4),
    sales FLOAT,
    genre VARCHAR(10),
    PRIMARY KEY (id)
);