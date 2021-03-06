USE employees;

-- DONE Find all employees whose last name starts and ends with 'E'
-- Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(e.first_name, ' ', e.last_name) full_name
from employees.employees e
where e.last_name LIKE "E%"
  AND e.last_name LIKE "%e";


-- DONE: Find all employees born on Christmas — 842 rows.
SELECT *
from employees.employees e
where month(e.birth_date) = 12
AND day(e.birth_date) = 25;

-- DONE: Find all employees hired in the 90s and born on Christmas — 362 rows
SELECT *
from employees.employees e
where month(e.birth_date) = 12
AND day(e.birth_date) = 25
AND year(e.hire_date) BETWEEN 1990 AND 1999;

-- DONE Change the query for employees hired in the 90s and born on Christmas such that the first
-- result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
from employees.employees e
where month(e.birth_date) = 12
AND day(e.birth_date) = 25
AND year(e.hire_date) BETWEEN 1990 AND 1999
ORDER BY e.hire_date desc;

-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days
-- they have been working at the company (Hint: You might also need to use now() or curdate()).
-- MADE MORE EFFICIENT

SELECT CONCAT(e.first_name, ' ', e.last_name) full_name, DATEDIFF(CURDATE(), e.hire_date) daysAtTheCompany
from employees.employees e
where month(e.birth_date) = 12
  AND day(e.birth_date) = 25
  AND year(e.hire_date) BETWEEN 1990 AND 1999;


# SELECT CONCAT(first_name, ' ', last_name) full_name, DATEDIFF(CURDATE(), hire_date)
# from employees
# where month(birth_date) = 12
# AND day(birth_date) = 25
# AND year(hire_date) BETWEEN 1990 AND 1999;
