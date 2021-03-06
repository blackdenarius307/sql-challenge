-- Doing a join to pull this information for Question 1.
SELECT 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex,
	salaries.salary
FROM 
	employees
INNER JOIN salaries ON
	employees.emp_no = salaries.emp_no;

--Finding all employees hired in 1986
SELECT
	first_name,
	last_name,
	hire_date
FROM
	employees
WHERE
	hire_date LIKE '%1986';

--Finding managers and their departments
SELECT
	dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM
	dept_manager
INNER JOIN departments ON
	dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
	dept_manager.emp_no = employees.emp_no;

--Finding Employees and their departments
SELECT
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
	dept_emp
INNER JOIN employees ON
	dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
	dept_emp.dept_no = departments.dept_no;

--Finding Hercules, son of Zeus... Zeus did get quite busy as you might know.
SELECT 
	first_name,
	last_name,
	sex
FROM
	employees
WHERE
	first_name
LIKE
	'Hercules%'
AND
	last_name
LIKE
	'B%';

--Find the Salesmen and Saleswomen. Auditions have gone up for Death of a Salesman and they're looking for real world experience.
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
	employees
INNER JOIN dept_emp ON
	employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
	dept_emp.dept_no = departments.dept_no
WHERE
	dept_name = 'Sales';

--Bring out the Developers too! We need more blood sacrifices to theater!
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
	employees
INNER JOIN dept_emp ON
	employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
	dept_emp.dept_no = departments.dept_no
WHERE
	dept_name = 'Sales'
OR
	dept_name = 'Development';

-- Order by count of last names 
SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;
