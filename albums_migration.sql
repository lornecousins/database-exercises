USE codeup_test_db;

-- removes a table only if it exists
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
                                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                      artist CHAR(100) NOT NULL,
                                      name VARCHAR(100) NOT NULL,
                                      release_date INT,
                                      sales FLOAT,
                                      genre CHAR(200),
                                      PRIMARY KEY (id)
);


INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Bon Jovi','Some album',1994, 1235332453, 'classic rock, pop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Christina Aguilera','Some other album',1999, 10000000, 'classic pop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Metallica','black album',1990, 1444244, 'classic rock, rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Eminem','new album',2004, 255453432, 'rap, pop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Styx','old album',1976, 333144223, 'classic rock, pop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES  ('Styx','old album',1976, 333144223, 'classic rock, pop'),
        ('Eagles','old album',1977, 23452345, 'classic rock, pop'),
        ('Jonnie Cash','old album',1950, 2222344, 'classic country, pop'),
        ('The Beach Boys','old album',1965, 222224544, 'classic pop'),
        ('Death Cab for Cutie','old album',2010, 233453433, 'indie rock, emo');


SELECT 'albums' as prefix , a.* FROM albums a WHERE release_date > 1995;

SELECT artist FROM albums WHERE sales between 10000000 and 15000000;

UPDATE albums SET release_date = 1991
WHERE artist = 'Metallica' ;

/*DELETE FROM albums WHERE release_date > 1995;
DELETE FROM albums;*/
-- same as DELETE FROM without any where, but faster
TRUNCATE albums;


DESC albums;

SHOW CREATE TABLE albums;





-- #     CREATE DATABASE IF NOT EXISTS blog_app;
-- # -- pluralizing the name of the table
-- # USE blog_app;
-- # # Creating a table
-- #
-- # DROP TABLE IF EXISTS users;
-- # CREATE TABLE IF NOT EXISTS users  (
-- # #       unsigned,NOT SIGNED , no negative values!
-- #       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
-- #       name VARCHAR(50) NOT NULL,
-- #       email VARCHAR(100),
-- #       job_title VARCHAR(100),
-- #       address VARCHAR(200),
-- #       creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
-- #       PRIMARY KEY (id)
-- # );
-- #
-- # DROP TABLE IF EXISTS posts;
-- # CREATE TABLE IF NOT EXISTS posts (
-- #      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
-- #      user_id INT UNSIGNED NOT NULL,
-- #      title VARCHAR(100),
-- #      body TEXT,
-- #      PRIMARY KEY (id)
-- # );
-- #
-- #
-- # DROP TABLE IF EXISTS posts_label;
-- # CREATE TABLE IF NOT EXISTS posts_label (
-- #        post_id INT UNSIGNED NOT NULL, -- relates to table post.id
-- #        label_id INT UNSIGNED NOT NULL -- relates to table labels.id
-- # );
-- #
-- # DROP TABLE IF EXISTS labels;
-- # CREATE TABLE IF NOT EXISTS labels (
-- #       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
-- # # only characters 25 max, not to be empty, or null
-- #       name CHAR(25) NOT NULL,
-- #       primary key (id)
-- # );
-- #
-- #
-- # INSERT INTO users (name, email, job_title, address)
-- # VALUES ('Dane Miller', 'dane.miller@codeup.com','Web Developer and Instructor', '1234 my place');
-- #
-- # INSERT INTO posts (user_id, title, body)
-- # VALUES (1,'My first post', 'lots of text and stuff here');
-- #
-- # INSERT INTO labels (name) VALUES ('Awesome');
-- # INSERT INTO labels (name) VALUES ('The worst');
-- # INSERT INTO labels (name) VALUES ('Ok');
-- #
-- #
-- # INSERT INTO posts_label (post_id, label_id)  VALUES (1,1), (1,2), (1,3);
-- #
-- #
-- # SELECT  p.id, l.name as label_name  FROM posts p
-- #                                              INNER JOIN posts_label pl ON (pl.post_id = p.id)
-- #                                              INNER JOIN labels l ON (l.id = pl.label_id)
-- # WHERE p.id = 1;
-- #
-- # # describing tables
-- # # desc only works in mysql, other sql servers use SHOW
-- # DESC users;
-- #
-- #
-- # # shows all the tables in a database.
-- # SHOW tables;
-- #
-- # # Dropping Tables
-- # DROP TABLE users;