use employees;

# TODO
# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT e.first_name, e.last_name
FROM employees as e
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no LIKE '101010'
      AND hire_date LIKE'1990-10-22');

# DONE: Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT t.title
FROM titles as t
WHERE t.emp_no IN(
    SELECT e.emp_no
    FROM employees as e
    WHERE e.first_name = "Aamod");


# DONE Find all the current department managers that are female.
SELECT e.first_name, e.last_name
FROM employees as e
WHERE e.gender = "F"
  AND e.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager as dm
    WHERE dm.to_date LIKE "9999-01-01");


# BONUS
# DONE -Find all the department names that currently have female managers
SELECT d.dept_name
FROM departments as d
WHERE d.dept_no IN (
    SELECT dm.dept_no
    FROM dept_manager as dm
    WHERE dm.to_date = "9999-01-01"

    AND dm.emp_no IN(
        SELECT e.emp_no
        FROM employees as e
        WHERE e.gender = "F")
    )
ORDER BY d.dept_name;

# Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
    SELECT emp_no
    FROM salaries
    WHERE salary LIKE (SELECT MAX(salary) FROM salaries)
    )