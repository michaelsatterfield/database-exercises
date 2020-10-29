USE employees;
SELECT  d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name ) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
     ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;