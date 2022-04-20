USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT *
FROM employees
WHERE last_name LIKE ('%E%')
ORDER BY emp_no;

SELECT *
FROM employees
WHERE last_name LIKE ('%E%')
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

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name like '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT first_name, last_name, birth_date
FROM employees
WHERE month(birth_date) = 12
    AND day(birth_date) = 25;
#to get the number of employees born on Christmas:
SELECT COUNT(*)
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;
##to get the number of employees born on Christmas and hired in 90s:
SELECT COUNT(*)
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date, hire_date DESC;
#walkthru:
SELECT first_name, last_name
FROM employees
WHERE month(birth_date) = 12
    AND day(birth_date) = 25
    AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC;



SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%-12-25'
  ORDER BY birth_date, hire_date DESC
;