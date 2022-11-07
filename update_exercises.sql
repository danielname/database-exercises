USE codeup_test_db;
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums WHERE release_date REGEXP '19[^8|^9].';
UPDATE albums SET release_date = 1800 WHERE release_date REGEXP '19[^8|^9].';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' Where artist = 'Michael Jackson';
