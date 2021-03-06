use employees;

-- In your script, use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title
from titles;

-- DONE: Find your query for employees whose last names start and end with 'E'.
-- Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
SELECT e.last_name
from employees as e
where e.last_name LIKE "E%"
   AND e.last_name LIKE "%e"
GROUP BY e.last_name;

-- DONE: Update your previous query to now find unique combinations of first and last name where the last name
-- starts and ends with 'E'
SELECT e.last_name
from employees as e
where e.last_name LIKE "E%"
  AND e.last_name LIKE "%e"
GROUP BY e.last_name, e.first_name;

-- Find the unique last names with a 'q' but not 'qu'.
SELECT e.last_name
from employees as e
where e.last_name LIKE "%q%"
  AND e.last_name NOT LIKE "%qu%"
GROUP BY e.last_name;


-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name
-- is shared with others.
SELECT e.last_name, COUNT(e.last_name)
from employees as e
where e.last_name LIKE "%q%"
  AND e.last_name NOT LIKE "%qu%"
GROUP BY e.ast_name;

-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the
-- number of employees for each gender with those names.
SELECT e.gender, COUNT(e.gender) as 'count'
from employees as e
where e.first_name in ('Irena'
, 'Vidya', 'Maya')
GROUP BY e.gender
ORDER BY e.gender;



