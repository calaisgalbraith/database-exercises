USE employees;


-- DONE: Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN)
    SELECT *
    from employees
    where first_name in ('Irena', 'Vidya', 'Maya');


-- DONE: Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
-- DONE: Add a condition to find everybody with those names who is also male — 441 rows.
    SELECT *
    from employees
    where (first_name = 'Irena'
       OR  first_name = 'Vidya'
       OR first_name =  'Maya')
       AND gender = 'M';


-- DONE: Find all employees whose last name starts with 'E' — 7,330 rows.
    SELECT *
    from employees
    where last_name LIKE "E%";


-- DONE: Find all employees with a 'q' in their last name — 1,873 rows.
    SELECT *
    from employees
    where last_name LIKE "%q%";


-- DONE: Find all employees whose last name starts or ends with 'E' — 30,723 rows.
    SELECT *
    from employees
    where last_name LIKE "E%"
        OR last_name LIKE "%e";


-- DONE: Find all employees whose last name starts and ends with 'E' — 899 rows.
    SELECT *
    from employees
    where last_name LIKE "E%"
        AND last_name LIKE "%e";


--  Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
    SELECT *
    from employees
    where last_name LIKE "%q%"
      AND last_name NOT LIKE "%qu%";

