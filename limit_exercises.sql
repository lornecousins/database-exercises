USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
limit 5;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
limit 5
offset 45;
