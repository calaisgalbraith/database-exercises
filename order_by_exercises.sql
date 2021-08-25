USE employees;

-- Modify your first query to order by first name.
    SELECT *
    from employees.employees e
    where e.first_name in ('Irena', 'Vidya', 'Maya')
    ORDER BY e.first_name asc;

-- Update the query to order by first name and then last name.
    SELECT *
    from employees.employees e
    where e.first_name in ('Irena', 'Vidya', 'Maya')
    ORDER BY e.first_name asc, e.last_name asc;

-- Change the ORDER BY clause so that you order by last name before first name.
    SELECT *
    from employees.employees e
    where e.first_name in ('Irena', 'Vidya', 'Maya')
    ORDER BY e.last_name asc, e.first_name asc;

-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
    SELECT *
    from employees.employees e
    where e.last_name LIKE "E%"
      OR e.last_name LIKE "%e"
      OR e.last_name LIKE "%e%"
      ORDER BY e.emp_no;

-- Now reverse the sort order for both queries and compare results.
    SELECT *
    from e.employees.employees e
    where e.first_name in ('Irena', 'Vidya', 'Maya')
    ORDER BY e.last_name desc, first_name desc;

    SELECT *
    from employees.employees e
    where e.last_name LIKE "E%"
    OR e.last_name LIKE "%e"
    OR e.last_name LIKE "%e%"
    ORDER BY e.emp_no desc;