use employees;

-- DONE: Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
-- DONE: Add the date of birth for each employee as 'DOB' to the query.
-- DONE: Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.
SELECT CONCAT(emp_no, ' - ', last_name, ' ', first_name) AS full_name, birth_date AS dob
FROM employees
LIMIT 10;