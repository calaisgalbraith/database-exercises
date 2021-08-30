use employees;

# DONE Write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
    INNER JOIN dept_manager as dm
        ON dm.emp_no = e.emp_no
    INNER JOIN departments as d
        ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

#  DONE Find the name of all departments currently managed by women.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         INNER JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         INNER JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE e.gender like "F" AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# DONE: Find the current titles of employees currently working in the Customer Service department.
SELECT t.title as 'Title', COUNT(t.emp_no) as 'Count'
FROM titles as t
        INNER JOIN dept_emp de
            On t.emp_no = de.emp_no
        INNER JOIN departments d
            on d.dept_no = de.dept_no
WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01' and t.to_date = '9999-01-01'
GROUP BY t.title;

# DONE Find the current salary of all current managers.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees as e
    INNER JOIN dept_manager as dm
        ON dm.emp_no = e.emp_no
    INNER JOIN departments as d
        ON d.dept_no = dm.dept_no
    INNER JOIN salaries s
        ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'and s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# DONE Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name as 'Department', CONCAT(ex.first_name, ' ', ex.last_name) AS 'Manager'
FROM employees as e
    INNER JOIN dept_emp de
        on e.emp_no = de.emp_no
    INNER JOIN departments d
        on de.dept_no = d.dept_no
    INNER JOIN dept_manager dm
         on d.dept_no = dm.dept_no AND dm.to_date = '9999-01-01'
    INNER JOIN employees ex
         on dm.emp_no = ex.emp_no
WHERE de.to_date = '9999-01-01';



