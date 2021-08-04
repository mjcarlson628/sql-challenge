-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, dept_name, dm.emp_no, last_name, first_name
FROM dept_manager dm
JOIN departments d
ON d.dept_no = dm.dept_no
JOIN employees e
ON dm.emp_no = e.emp_no;