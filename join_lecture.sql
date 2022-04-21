CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', NULL),
       ('mike', 'mike@example.com', NULL);



USE codeup_test_db;

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons`
(
    `id`         int UNSIGNED NOT NULL AUTO_INCREMENT,
    `first_name` varchar(25)  NOT NULL,
    `album_id`   int UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    KEY `album_id` (`album_id`),
    CONSTRAINT `persons_album_id_fk` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `persons`
VALUES (1, 'Olivia', 29),
       (2, 'Santiago', 27),
       (3, 'Tareq', 15),
       (4, 'Anaya', 28);

# join
SELECT p.first_name, a.name
FROM persons p
         JOIN albums a ON p.album_id = a.id;

# left join
SELECT p.first_name, a.name
FROM persons p
         LEFT JOIN albums a ON a.id = p.album_id;

SELECT p.first_name, a.name
FROM albums a
         LEFT JOIN persons p ON p.album_id = a.id;

SELECT p.first_name, a.name
FROM persons p
         RIGHT JOIN albums a ON a.id = p.album_id;

CREATE TABLE preferences
(
    person_id INT UNSIGNED NOT NULL,
    album_id  INT UNSIGNED NOT NULL,
    CONSTRAINT preferences_person_id_fk FOREIGN KEY (person_id) REFERENCES persons (id),
    CONSTRAINT preferences_album_id_fk FOREIGN KEY (album_id) REFERENCES albums (id)
);

INSERT INTO preferences (person_id, album_id)
VALUES (1, 12),
       (1, 5),
       (1, 22),
       (1, 29),
       (2, 1),
       (2, 31),
       (2, 30),
       (3, 11),
       (3, 26),
       (3, 25);

SELECT p.first_name AS Name, a.name AS 'Favorite Album'
FROM persons p
         JOIN preferences pf ON p.id = pf.person_id
         JOIN albums a ON pf.album_id = a.id;

USE employees;

SELECT employees.last_name AS name, salaries.salary AS salary
FROM employees
         JOIN salaries ON employees.emp_no = salaries.emp_no;

# or
#Join using the USING keyword - only available when the column you are joining on has the SAME NAME in both tables
SELECT employees.last_name AS name, salaries.salary AS salary
FROM employees
         JOIN salaries USING (emp_no);

# or
#NATURAL JOIN will only work if both tables have a column with the same name AND that column is defined as a primary key in one of the tables.
SELECT employees.last_name AS name, salaries.salary AS salary
FROM employees
         NATURAL JOIN salaries;

SELECT CONCAT(first_name, ' ', last_name), salary
FROM salaries s
         JOIN dept_emp de ON s.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN employees e ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Research'
AND s.to_date = '9999-01-01'
ORDER BY salary DESC;














