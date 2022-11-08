USE employees;

SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT first_name FROM employees WHERE first_name REGEXP 'sus';

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082; last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no < 10026;

SELECT emp_no, first_name, last_name FROM employees
    WHERE emp_no < 20000 AND (last_name IN ('Herber', 'Baek')
    OR first_name = 'Shridhar');
# can use parens to group conditions, just like in other languages. otherwise, reads from left to right

