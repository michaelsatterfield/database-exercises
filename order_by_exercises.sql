USE employees;
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC , first_name desc;


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;


SELECT *
FROM employees
WHERE hire_date BETWEEN 1990-01-01 AND 2000-01-01;

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25%';

SELECT *
FROM employees
WHERE last_name LIKE '%q';

SELECT *
FROM employees
WHERE first_name IN ('Irena')
 OR ('Vidya')
 OR( 'Maya');


 SELECT *
FROM employees
WHERE gender = 'M'
ANd first_name IN ('Irena')
 OR ('Vidya')
 OR( 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
OR last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
AND last_name LIKE '%e';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01'
AND birth_date LIKE '%12-25%'
ORDER BY  birth_date, hire_date DESC;