USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees WHERE last_name REGEXP '^E.*e$';

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name REGEXP '^E.*e$';

SELECT DISTINCT last_name FROM employees WHERE last_name REGEXP 'q[^u]|q$';

SELECT count(*), gender FROM employees WHERE first_name IN ('Irena','Vidya','Maya') GROUP BY gender;