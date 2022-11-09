USE employees;
SELECT dept_name AS 'Department',CONCAT(first_name, ' ', last_name) AS 'Department Manager'
    FROM dept_manager m
    JOIN employees e
        ON m.emp_no = e.emp_no
    JOIN departments d
        ON d.dept_no = m.dept_no
    WHERE m.to_date REGEXP '^9';