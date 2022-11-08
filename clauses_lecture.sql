USE employees;

SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT first_name FROM employees WHERE first_name REGEXP 'sus';

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no < 10026;

SELECT emp_no, first_name, last_name FROM employees
    WHERE emp_no < 20000 AND (last_name IN ('Herber', 'Baek')
    OR first_name = 'Shridhar');
# can use parens to group conditions, just like in other languages. otherwise, reads from left to right
# 'AND' also has priority over 'OR' for some reason, so parentheses can be used to ensure the order of operations that you want.

SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;

SELECT birth_date FROM employees WHERE birth_date NOT REGEXP '^195';

SELECT birth_date FROM employees
    WHERE birth_date NOT REGEXP '^195'
    AND hire_date NOT LIKE '199%';
