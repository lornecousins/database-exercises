USE codeup_test_db;

#3-3
SELECT name, sales FROM albums;
UPDATE albums
SET sales = sales * 10;

SELECT * FROM albums;


SELECT * FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT * FROM albums
WHERE release_date < 1980;



SELECT name, artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
where artist = 'Michael Jackson';

SELECT name, artist FROM albums WHERE artist = 'Michael Jackson' OR artist = 'Peter Jackson';





