-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;