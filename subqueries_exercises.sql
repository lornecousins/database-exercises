USE employees;

#1
SELECT hire_date
FROM employees
WHERE emp_no = 101010;

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE hire_date = '1990-10-22');


#2
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod');

#3
SELECT first_name AS first_name, last_name AS last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F'
      AND to_date LIKE '9%');

# Bonus 1

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date LIKE '9%'
      AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
    )
);


# Bonus #2

SELECT first_name AS first_name, last_name AS last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE to_date LIKE '9%'
      AND salary IN (
        SELECT MAX(salary)
        FROM salaries)
);




