-- List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE e.hire_date >= '1986-1-01' AND e.hire_date <= '1986-12-31'
ORDER BY "hire_date" ASC;


---- List the manager of each department along with their department number, 
---- department name, employee number, last name, and first name.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

---- List the department number for each employee along with that employee’s 
---- employee number, last name, first name, and department name.
SELECT d.dept_no, e.first_name, e.last_name, de.emp_no, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
join departments AS d ON de.dept_no = d.dept_no;