USE employees;


# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT  d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name ) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
     ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;


# Find the name of all departments currently managed by women.
SELECT  d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name ) AS 'Manager Name'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'AND e.gender = 'F' ORDER BY dept_name;
