USE employees;

#1
SELECT CONCAT(first_name, ' ', last_name)
    FROM employees
    WHERE hire_date =
          (SELECT hire_date
           FROM employees
           WHERE emp_no = 101010);

#2 no sub-query
SELECT title
    FROM titles
    JOIN employees e
        ON e.emp_no = titles.emp_no
    WHERE first_name = 'Aamod';

#2 with sub-query
SELECT title
    FROM titles
    WHERE emp_no IN
      (SELECT emp_no
          FROM employees
          WHERE first_name = 'Aamod');

#3
SELECT CONCAT(first_name, ' ', last_name)
    FROM employees
    WHERE gender = 'F'
        AND emp_no IN
            (SELECT emp_no
             FROM dept_manager
             WHERE to_date REGEXP '^9');

#BONUS 1
SELECT dept_name
    FROM departments
    WHERE dept_no IN
        (SELECT dept_no
            FROM dept_manager
            WHERE to_date REGEXP '^9'
                AND emp_no IN
                (SELECT emp_no
                    FROM employees
                    WHERE gender = 'F'));

#BONUS 2
SELECT first_name, last_name
    FROM employees
    WHERE emp_no =
          (SELECT emp_no
              FROM salaries
              ORDER BY salary DESC
              LIMIT 1);