-- IMPORTANT: I FILL EACH TABLE BY CLIKING WITH THE RIGHT BUTTON AND USING DE IMPORT FUNCTION 
-- THAT PGADMIN HAVE, FROM HERE YOU HAVE TO EXPORT THE EXCEL FILES BEFORE RUN THE REST OF THE CODE.

--- List the employee number, last name, first name, sex, and salary of each employee.

SELECT last_name,
	first_name,
	sex,
	salary
FROM
	Employees
INNER JOIN 
	Salaries 
ON 
	Employees.emp_no = Salaries.emp_no;

---List the first name, last name, and hire date for the employees who were hired in 1986.
	
SELECT first_name,
	last_name,
	hire_date
FROM
	Employees
Where
	Employees.hire_date >= '01/01/1986';
	
---List the manager of each department along with their department number,
---department name, employee number, last name, and first name.
	
SELECT Departments.dept_no,
	dept_name,
	Employees.emp_no,
	last_name,
	first_name
FROM
	Employees
INNER JOIN 
	Dept_manager
ON 
	Employees.emp_no = Dept_manager.emp_no
JOIN 
	Departments
ON 
	Dept_manager.dept_no = Departments.dept_no;
	
	
------ List the department number for each employee along with that employee’s employee number, 
---last name, first name, and department name.
SELECT Employees.emp_no,
	last_name,
	first_name,
	dept_name
FROM
	Employees
INNER JOIN 
	dept_emp 
ON 
	Employees.emp_no = dept_emp.emp_no
JOIN 
	Departments
ON 
	dept_emp.dept_no = Departments.dept_no;

--- List first name, last name, and sex of each employee whose first name is Hercules 
--- and whose last name begins with the letter B.
SELECT first_name,
	last_name,
	sex
FROM
	Employees	
Where
	Employees.last_name
Like
	'B%'
AND
	Employees.first_name
LIKE
	'Hercules';

-- List each employee in the Sales department, including their employee number, last name, 
-- and first name.

SELECT Employees.emp_no,
	last_name,
	first_name
FROM
	Employees
INNER JOIN 
	dept_emp 
ON 
	Employees.emp_no = dept_emp.emp_no
JOIN 
	Departments
ON 
	dept_emp.dept_no = Departments.dept_no
Where
	Departments.dept_name
Like
	'Sales%';
---List each employee in the Sales and Development departments, including their employee number, 
---last name, first name, and department name.
SELECT Employees.emp_no,
	last_name,
	first_name,
	dept_name
FROM
	Employees
INNER JOIN 
	dept_emp 
ON 
	Employees.emp_no = dept_emp.emp_no
JOIN 
	Departments
ON 
	dept_emp.dept_no = Departments.dept_no
WHERE
	Departments.dept_name = 'Development'
OR
	Departments.dept_name ='Sales';
--- List the frequency counts, in descending order, of all the employee last names 
---(that is, how many employees share each last name).
SELECT COUNT
	(emp_no),
	last_name
FROM 
	Employees
GROUP BY 
	last_name
ORDER BY COUNT(emp_no) DESC;
