use employees;
# write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE e.gender = "F"
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title as 'Title', s.salary AS 'Total'
FROM employees as e
         JOIN titles as t
              ON t.emp_no = e.emp_no
         JOIN salaries as s
              ON s.salary = t.salary
ORDER BY s.salary;

# Find the current salary of all current managers.



# Bonus Find the names of all current employees, their department name, and their current manager's name .