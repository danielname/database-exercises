USE codeup_test_db;
SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
SELECT * FROM albums WHERE release_date REGEXP '199.';
SELECT * FROM albums WHERE sales < 20;
SELECT * FROM albums WHERE genre = 'Rock';
