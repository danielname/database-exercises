USE employees;

SELECT emp_no, first_name, last_name FROM employees
    WHERE (first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya')
        AND gender = 'M'
    ORDER BY last_name ASC, first_name ASC ;

SELECT emp_no, first_name, last_name FROM employees
    WHERE last_name REGEXP '^E|e$'
    ORDER BY emp_no DESC;
SELECT emp_no, first_name, last_name FROM employees WHERE last_name REGEXP '^E.*e$';


SELECT emp_no, first_name, last_name FROM employees WHERE last_name REGEXP 'q[^u]';
#this is the limit of regexp, cannot use a single line to look for any q without qu
SELECT emp_no, first_name, last_name FROM employees WHERE last_name Like '%q%' AND last_name NOT LIKE '%qu%';

