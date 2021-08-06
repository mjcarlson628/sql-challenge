-- 6. List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';