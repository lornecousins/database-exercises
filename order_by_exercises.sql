USE employees;

#Part One
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT *
FROM employees
WHERE last_name LIKE ('E%')
ORDER BY emp_no;

SELECT *
FROM employees
WHERE last_name LIKE ('E%')
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE ('%q%');

#Part Two
SELECT *
FROM employees
WHERE gender = 'M'
  AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%E';

SELECT *
FROM employees
WHERE last_name like '%q%'
  AND last_name NOT LIKE '%qu%';