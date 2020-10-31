USE employees;



SELECT emp_no, CONCAT(first_name, ' ', last_name) AS name, birth_date,hire_date
FROM employees
WHERE last_name LIKE 'E%e';



SELECT emp_no, CONCAT(first_name, ' ', last_name) AS name, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01'
  AND birth_date LIKE '%12-25%'
ORDER BY  birth_date, hire_date DESC;



# examples of functions mysql

SELECT curdate();
SELECT CURRENT_TIME AS 'local time';


select unix_timestamp() - unix_timestamp('2020-07-20 09:00:00')AS 'Time in class';

select ceiling(505.505);
select  floor (505.505);
select round(505.505);

select pi();

select avg(salary) as 'SALARY AVERAGE'
from salaries
where to_date = '9999-01-01';
