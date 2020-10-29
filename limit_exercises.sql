USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01'
  AND birth_date LIKE '%12-25%'
ORDER BY  birth_date, hire_date DESC
LIMIT 5;


SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01'
  AND birth_date LIKE '%12-25%'
ORDER BY  birth_date, hire_date DESC
LIMIT 5 OFFSET  45;