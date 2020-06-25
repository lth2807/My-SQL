
SELECT
	*
FROM
	employees
WHERE
	first_name LIKE ('Mark%');
    
SELECT
	*
FROM
	Employees
WHERE
	hire_date LIKE ('%2000%');
    
SELECT
	*
FROM
	employeEs
WHERE
	emp_no LIKE ('1000_');
    
SELECT
	*
FROM
	employees;
    
SELECT
	*
FROM
	employees
WHERE
	first_name NOT LIKE ('%Jack%');
    
SELECT
	*
FROM
	salaries
WHERE
	salary BETWEEN (66000) AND (70000);
    
SELECT
	*
FROM
	employees
WHERE
	emp_no NOT BETWEEN (10004) AND (10012);
    
SELECT
	DEPT_NAME
FROM
	departments
WHERE
	DEPT_No IS NOT NULL;
    
SELECT
	*
FROM
	employees
WHERE
	gender = "F" and hire_date >= '2000-01-01';
    
SELECT
	*
FROM
	salaries
WHERE
	salary >= 150000;
    
SELECT DISTINCT
	hire_date
FROM
	employees;
    
SELECT COUNT(*)
FROM
	SALARIES
WHERE
	SALARY >= 100000;
    
SELECT
	COUNT(*)
FROM
	dept_manager

SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;


SELECT
	SALARY, COUNT(emp_no) AS emps_with_same_salary
FROM
	SALARIES
WHERE
	SALARY > 80000
GROUP BY SALARY
ORDER BY SALARY;

SELECT
	*, avg(salary)
FROM
	salaries
group by salary
having
	avg(salary) > 120000
order by salary

SELECT

    emp_no, AVG(salary)

FROM

    salaries

GROUP BY emp_no

HAVING AVG(salary) > 120000

ORDER BY emp_no;
