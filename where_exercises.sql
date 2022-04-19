USE employees;

#Part One
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE ('E%');

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

