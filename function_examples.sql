use employees;

select database();

select concat('1','1','A') AS hello;


SELECT curdate();
SELECT CURRENT_TIME AS 'local time';


select unix_timestamp() - unix_timestamp('2020-07-20 09:00:00')AS 'Time in class';

select ceiling(505.505);
select  floor (505.505);
select round(505.505);

-- aggregate funtcions

select pi();

select avg(salary) as 'SALARY AVERAGE'
from salaries
where to_date = '9999-01-01';

select max(salary) as 'SALARY MAXIMUN'
from salaries
where to_date = '9999-01-01';

select count(e.emp_no) as 'EMPLOYEES'
from employees as e;

# DISTINCT (removes the duplicates in list)


# group by
select count(*),last_name
FROM employees
where hire_date = '1990-12-25'
GROUP BY last_name;


SELECT first_name,COUNT(first_name)
FROM employees
WHere first_name NOT LIKE '%a%'
GROUP BY first_name;


