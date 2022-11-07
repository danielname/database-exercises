USE codeup_test_db;
SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT year FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
SELECT * FROM albums WHERE year REGEXP '199.';
SELECT * FROM albums WHERE sales < 20;
SELECT * FROM albums WHERE genre = 'Rock';
