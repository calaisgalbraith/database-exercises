USE employees;

-- List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT DISTINCT e.last_name
FROM employees.employees e
ORDER by e.last_name desc
LIMIT 10;

-- Create a query to get the top 5 salaries and display just the employees number from the salaries table.
SELECT salary, emp_no
FROM salaries
ORDER by salary asc
LIMIT 5;

-- Try to think of your results as batches, sets, or pages. The first five results are your first page.
-- The five after that would be your second page, etc. Update the previous query to find the tenth page of results.
SELECT salary, emp_no
FROM salaries
ORDER by salary asc
LIMIT 5 offset 50;