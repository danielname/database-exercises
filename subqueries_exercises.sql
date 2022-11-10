USE employees;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE hire_date =
      (SELECT hire_date
       FROM employees
       WHERE emp_no = 101010);