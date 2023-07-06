--Create Departments table
CREATE TABLE departments (
  dept_no CHAR(4) PRIMARY KEY,
  dept_name VARCHAR(50) NOT NULL
);

--Create Titles table
CREATE TABLE titles (
  title_id VARCHAR(10) PRIMARY KEY,
  title VARCHAR(50) NOT NULL
);

--Create Employees table
CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(10) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  sex CHAR(1) NOT NULL,
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--Create Dept_Emp table
CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(4),
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Create Dept_Manager table
CREATE TABLE dept_manager (
  dept_no VARCHAR(4),
  emp_no INT,
  PRIMARY KEY (dept_no, emp_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Create Salaries table
CREATE TABLE salaries (
  emp_no INT,
  salary INT,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);