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
