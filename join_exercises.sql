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
         LEFT JOIN roles r ON r.id = u.role_id;

SELECT u.name AS Name,
       r.name AS Role
FROM users u
         RIGHT JOIN roles r ON r.id = u.role_id;

# extra: refactored right join to a left join
SELECT u.name AS Name, r.name AS Role
FROM roles r
         LEFT JOIN users u ON u.role_id = r.id;

SELECT r.name AS Role, COUNT(u.name)
FROM roles r
         JOIN users u ON u.role_id = r.id
GROUP BY r.name;

# Employees Database:
USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
         JOIN departments d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY dept_name;


SELECT title AS title, COUNT(title) AS Total
FROM departments d
         JOIN dept_emp de ON de.dept_no = d.dept_no
         JOIN titles t ON de.emp_no = t.emp_no
WHERE d.dept_name = 'Customer Service'
  AND t.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
GROUP BY title;


SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary                               AS Salary
FROM employees e
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
ORDER BY dept_name;


SELECT CONCAT(e.first_name, ' ', e.last_name)   AS Employee,
       dept_name                              AS Department,
       CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
FROM employees e
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN dept_manager dm ON d.dept_no = dm.dept_no
         JOIN employees e2 ON dm.emp_no = e2.emp_no
WHERE YEAR(de.to_date) = 9999
  AND YEAR(dm.to_date) = 9999;








