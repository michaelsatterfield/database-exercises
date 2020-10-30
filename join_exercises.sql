USE employees;


# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT  d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name ) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm ON dm.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY d.dept_name;


# Find the name of all departments currently managed by women.
SELECT  d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name ) AS 'Manager Name'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY dept_name;


# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS TITLE, COUNT(t.emp_no) AS Count
From titles AS t
    join dept_emp as  de on t.emp_no = de.emp_no
    join departments as d on de.dept_no = d.dept_no
WHERE de.dept_no = 'd009'
 and t.to_date = '9999-01-01'
and de.to_date = '9999-01-01'
group by t.title;


# Find the current salary of all current managers.
SELECT  d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name ) AS 'Name',s.salary AS 'Salary'

FROM employees as e

         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries as s
              ON e.emp_no= s.emp_no


WHERE dm.to_date = '9999-01-01'
and s.to_date = '9999-01-01'
ORDER BY dept_name;

# *********SUB QUERIES************
# Find all the current department managers that are female.

SELECT emp_no, concat(first_name, ' ', last_name) as name,gender
from employees
where emp_no IN (SELECT emp_no
                 from dept_manager
                 where to_date = '9999-01-01')
  AND  gender = 'F';