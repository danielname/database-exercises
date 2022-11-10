USE employees;

SELECT CONCAT(first_name, ' ', last_name)
    FROM employees
    WHERE hire_date =
          (SELECT hire_date
           FROM employees
           WHERE emp_no = 101010);

SELECT title
FROM titles
JOIN employees e
    ON e.emp_no = titles.emp_no
WHERE first_name = 'Aamod';

SELECT title
FROM titles
WHERE emp_no IN
      (SELECT emp_no
          FROM employees
          WHERE first_name = 'Aamod');
