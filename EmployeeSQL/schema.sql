CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY
	,dept_name VARCHAR
);

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY
	,title VARCHAR
);

DROP TABLE IF EXISTS employees; 
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


-- Data Analysis
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(TO_DATE(hire_date, 'DD/MM/YYYY')) = 1986;

