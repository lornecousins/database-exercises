USE join_test_db;

# Join Example Database
INSERT INTO users (name, email, role_id)
VALUES ('kevin', 'kevin@example.com', NULL),
       ('david', 'david@example.com', 2),
       ('alex', 'alex@example.com', 2),
       ('chelsea', 'chelsea@example.com', 2);

SELECT u.name AS Name, r.name AS Role
FROM users u
         JOIN roles r ON r.id = u.role_id;

SELECT u.name AS Name, r.name AS Role
FROM users u
         Left JOIN roles r ON r.id = u.role_id;

SELECT
       u.name as Name, r.name as Role
FROM users u
         Right JOIN roles r ON r.id = u.role_id;

# extra: refactored right join to a left join
SELECT u.name as Name, r.name as Role
FROM roles r
         Left JOIN users u ON u.role_id = r.id;

SELECT r.name as Role, COUNT(u.name)
FROM roles r
         JOIN users u ON u.role_id = r.id
GROUP BY r.name;


