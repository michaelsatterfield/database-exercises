use employees;
SELECT DISTINCT title
from titles;


SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
group by last_name;