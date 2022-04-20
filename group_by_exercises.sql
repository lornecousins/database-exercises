USE employees;
#2
SELECT DISTINCT title
FROM titles;

#3
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name
ORDER BY last_name;

#4
SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name Like 'e%e';
# walkthru:
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;

#5
SELECT DISTINCT last_name
FROM employees
WHERE last_name like '%q%'
  AND last_name NOT LIKE '%qu%';
# walkthru:
SELECT DISTINCT last_name
FROM employees
WHERE last_name like '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

#6
SELECT last_name, COUNT(*)
FROM employees
WHERE last_name like '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;
# walkthru:
SELECT COUNT(*), last_name
FROM employees
WHERE last_name like '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

#7
SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
