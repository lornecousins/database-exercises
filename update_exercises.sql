USE codeup_test_db;

#3-2
SELECT 'My Albums', name FROM albums;


SELECT 'Before 1980', name FROM albums WHERE release_date < 1980;

SELECT 'Michael Jackson', name FROM albums WHERE artist = 'Michael Jackson';



