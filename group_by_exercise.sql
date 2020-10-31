use employees;
SELECT DISTINCT title
from titles;


SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
group by last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name  LIKE 'e%'
  AND last_name LIKE '%e'
group by last_name, first_name;

# Find the unique last names with a 'q' but not 'qu'. Your results should be:

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.

SELECT DISTINCT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*);

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:


SELECT COUNT(*) AS 'Count',gender
FROM employees
WHERE first_name in('Irena', 'Vidya', 'Maya')
GROUP BY gender;

