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

-- Time to get Double Jointed
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
	