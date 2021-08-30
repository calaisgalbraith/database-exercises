use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE e.hire_date IN (
    SELECT e.hire_date
    WHERE e.emp_no = 101010);


SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE e.hire_date =  '1990-10-22';

# DONE: Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT t.title
FROM titles as t
WHERE t.emp_no IN(
    SELECT e.emp_no
    FROM employees as e
    WHERE e.first_name = "Aamod");


# DONE Find all the current department managers that are female.
SELECT e.first_name, e.last_name, e.emp_no
FROM employees as e, dept_manager as dm
WHERE e.gender = "F"
  AND e.emp_no IN (
    SELECT dm.emp_no
      WHERE dm.to_date = "9999-01-01");

# BONUS
# Find all the department names that currently have female managers



# Find the first and last name of the employee with the highest salary.