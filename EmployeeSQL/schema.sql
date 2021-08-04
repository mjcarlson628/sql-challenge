-- DROP TABLE IF EXISTS salaries;
-- DROP TABLE IF EXISTS dept_manager;
-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS titles;
-- DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY
	,dept_name VARCHAR
);

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY
	,title VARCHAR
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY
	,emp_title_id VARCHAR
	,birth_date DATE
	,first_name VARCHAR
	,last_name VARCHAR
	,sex VARCHAR(1)
	,hire_date DATE
	,FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
	emp_no INT
	,dept_no VARCHAR
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR
	,emp_no INT
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no INT
	,salary INT
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);