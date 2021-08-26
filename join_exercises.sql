use employees;

# DONE Write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
    JOIN dept_manager as dm
        ON dm.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

#  DONE Find the name of all departments currently managed by women.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE e.gender like "F" AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

# DONE: Find the current titles of employees currently working in the Customer Service department.
SELECT t.title as 'Title', COUNT(*) as 'Total'
FROM employees as e
         JOIN titles as t
              ON t.emp_no = e.emp_no
        JOIN dept_emp de
            On e.emp_no = de.emp_no
        JOIN departments d
            on d.dept_no = de.dept_no
WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01'
GROUP BY t.title;

# DONE Find the current salary of all current managers.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees as e
    JOIN dept_manager as dm
        ON dm.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = dm.dept_no
    JOIN salaries s
        ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'and s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT DISTINCT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name as 'Department', CONCAT(me.first_name, ' ', me.last_name) as 'Manager'
FROM employees as e
    JOIN dept_emp de
        on e.emp_no = de.emp_no
    JOIN departments d
        on de.dept_no = d.dept_no
    JOIN dept_manager dm
        on d.dept_no = dm.dept_no
    JOIN employees me
        on dm.emp_no = me.emp_no
WHERE de.to_date = '9999-01-01' and ('9999-01-01' BETWEEN dm.from_date and dm.to_date);

