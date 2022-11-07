USE codeup_test_db;
DELETE FROM albums WHERE release_date REGEXP '[199[^0|^1]|20..]';
DELETE FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE artist = 'Whitney Houston';
