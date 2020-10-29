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


# Find the current titles of employees currently working in the Customer Service department.
# SELECT  t.title AS 'Title', count() AS Count From employees
# FROM employees as e
#          JOIN titles as t
#               ON t.emp_no = e.emp_no
#          JOIN departments as d
# #               ON d.= e.
# WHERE t.to_date = '9999-01-01'AND d.dept_name = 'Customer Service' ORDER BY dept_name;

# Find the current salary of all current managers.
SELECT  d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name ) AS 'Name',s.emp_no AS 'Salary'
FROM employees as e

         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries as s
              ON s.salary= e.emp_no


WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;