USE codeup_test_db;
#2-3
SELECT * From albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums Where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 2000;

SELECT name FROM albums where sales < 20000000;

SELECT name FROM albums where genre = 'Rock';


