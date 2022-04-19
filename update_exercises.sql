USE codeup_test_db;

#3-2
SELECT 'My Albums', name, sales FROM albums;
UPDATE albums
SET sales = sales * 10;

SELECT 'Before 1980', name, sales FROM albums WHERE release_date < 1980;
UPDATE albums
SET sales = sales * 10;

SELECT 'Michael Jackson', name, sales FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET sales = sales * 10;



