USE employees;
SELECT dept_name AS 'Department',CONCAT(first_name, ' ', last_name) AS 'Department Manager'
    FROM dept_manager m
        JOIN employees e
            ON m.emp_no = e.emp_no
        JOIN departments d
            ON d.dept_no = m.dept_no
    WHERE m.to_date REGEXP '^9';

SELECT dept_name AS 'Department',CONCAT(first_name, ' ', last_name) AS Department_Manager
    FROM dept_manager m
         JOIN employees e
              ON m.emp_no = e.emp_no
         JOIN departments d
              ON d.dept_no = m.dept_no
    WHERE m.to_date REGEXP '^9' AND e.gender = 'F';

SELECT t.title, COUNT(*) AS Total
    FROM dept_emp e
        JOIN titles t
            ON e.emp_no = t.emp_no
    WHERE e.dept_no = 'd009' AND t.to_date REGEXP '^9'
    GROUP BY t.title;
# Find the current titles of employees currently working in the Customer Service department.
# dept_emp.dept_no 'd009' -> dept_emp.emp_no = titles.emp_no -> title WHERE to_date REGEXP '^9'