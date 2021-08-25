USE employees;


-- DONE: Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN)
    SELECT *
    from employees e
    where e.first_name in ('Irena', 'Vidya', 'Maya');


-- DONE: Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
-- DONE: Add a condition to find everybody with those names who is also male — 441 rows.
    SELECT *
    from employees e
    where (e.first_name = 'Irena'
       OR  e.first_name = 'Vidya'
       OR e.first_name =  'Maya')
       AND e.gender = 'M';


-- DONE: Find all employees whose last name starts with 'E' — 7,330 rows.
    SELECT *
    from employees.employees e
    where e.last_name LIKE "E%";


-- DONE: Find all employees with a 'q' in their last name — 1,873 rows.
    SELECT *
    from employees.employees e
    where e.last_name LIKE "%q%";


-- DONE: Find all employees whose last name starts or ends with 'E' — 30,723 rows.
    SELECT *
    from employees.employees e
    where e.last_name LIKE "E%"
        OR e.last_name LIKE "%e";


-- DONE: Find all employees whose last name starts and ends with 'E' — 899 rows.
    SELECT *
    from employees
    where e.last_name LIKE "E%"
        AND e.last_name LIKE "%e";


--  Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
    SELECT *
    from employees
    where e.last_name LIKE "%q%"
      AND e.last_name NOT LIKE "%qu%";

