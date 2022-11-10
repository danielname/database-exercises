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

# Find the current titles of employees currently working in the Customer Service department.
# dept_emp.dept_no 'd009' -> dept_emp.emp_no = titles.emp_no -> title WHERE to_date REGEXP '^9'
SELECT t.title, COUNT(*) AS Total
    FROM dept_emp e
        JOIN titles t
            ON e.emp_no = t.emp_no
    WHERE e.dept_no = 'd009' AND t.to_date REGEXP '^9'
    GROUP BY t.title;

SELECT dept_name AS 'Department',CONCAT(first_name, ' ', last_name) AS 'Department Manager', salary
    FROM dept_manager m
         JOIN employees e
              ON m.emp_no = e.emp_no
         JOIN departments d
              ON d.dept_no = m.dept_no
         JOIN salaries s
              ON e.emp_no = s.emp_no
    WHERE m.to_date REGEXP '^9' AND s.to_date REGEXP '^9';

# Find the names of all current employees, their department name, and their current manager's name
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name as Department, CONCAT(m.first_name, ' ', m.last_name) AS Manager
    FROM employees e
        LEFT JOIN dept_emp de
            ON e.emp_no = de.emp_no
        LEFT JOIN departments d
             ON de.dept_no = d.dept_no
        LEFT JOIN dept_manager dm
            ON d.dept_no = dm.dept_no
        JOIN employees m
            ON dm.emp_no = m.emp_no
    WHERE de.to_date REGEXP '^9' AND dm.to_date REGEXP '^9';