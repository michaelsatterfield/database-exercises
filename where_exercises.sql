USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01';

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25%';

SELECT *
FROM employees
WHERE last_name LIKE '%q';

SELECT *
FROM employees
WHERE first_name ='Irena'
   OR  first_name = 'Vidya'
   OR  first_name ='Maya';



SELECT *
FROM employees
WHERE (first_name ='Irena'
   OR first_name ='Vidya'
   OR first_name ='Maya')
  AND  gender = 'm';


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
AND birth_date LIKE '%12-25%';

SELECT *
FROM employees
Where last_NAME LIKE '%q%'
 ANd last_name NOT LIKE '%qu%';