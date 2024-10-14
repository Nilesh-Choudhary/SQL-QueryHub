-- Using database 'database_info'
USE database_info;

-- Show all tables in the 'database_info' database
SHOW TABLES;
 
-- Select all records from the 'company' table
SELECT * FROM company;

-- Replace 'Specialist' with 'Expert' in the 'Position' column
SELECT *, REPLACE(Position, 'Specialist', 'Expert') AS NewPosition FROM Employee;

-- Subquery
-- A subquery is a query nested within another SQL query.
-- It can be used in SELECT, INSERT, UPDATE, or DELETE statements or inside another subquery.
-- Subqueries allow for complex filtering and data retrieval based on the results of another query.

-- Single Row Subquery
-- A single row subquery returns only one row of results.
-- It is often used with comparison operators like `=`, `>`, `>=`, etc., in the WHERE clause.
-- Example: Finding employees with a salary greater than the average salary involves a single row subquery.

-- Multi Row Subquery
-- A multi row subquery returns multiple rows of results.
-- It is typically used with operators like `IN`, `ANY`, `ALL`, etc., to filter or compare multiple values.
-- Example: Selecting employees from departments located in multiple specified cities involves a multi row subquery.

-- ALL
-- The ALL operator in SQL is used to compare a value to all values in another set or subquery.
-- It returns TRUE if all of the subquery values meet the condition.
-- It is commonly used with comparison operators such as >, <, >=, <=.

-- ANY
-- The ANY operator in SQL is used to compare a value to any value in a list or subquery.
-- It returns TRUE if any of the subquery values meet the condition.
-- It is often used with comparison operators to test if a condition applies to at least one value in a subquery.


-- Using database 'sub_queries'
USE sub_queries;

-- Show all tables in the 'sub_queries' database
SHOW TABLES;

-- Select all records from 'departments' and 'employees' tables
SELECT * FROM departments;
SELECT * FROM employees;

-- Count employees in each department
SELECT d.dept_name, COUNT(*) 
FROM employees e
INNER JOIN departments d
ON e.department_id = d.dept_id
GROUP BY d.dept_name;

-- Calculate the average salary of employees
SELECT ROUND(AVG(salary), 2) AS avg_salary FROM employees;

-- Select employees with a salary greater than the average salary
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

-- Find the employee with the maximum salary
SELECT * FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);

-- Find the employee with the highest salary
SELECT emp_name 
FROM employees
ORDER BY salary DESC
LIMIT 1;

-- Find the department with the highest number of employees
SELECT dept_name 
FROM departments
WHERE dept_id = (
    SELECT department_id 
    FROM employees
    GROUP BY department_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

-- Find the average salary of the Sales department
SELECT AVG(salary) 
FROM employees
WHERE department_id = (
    SELECT dept_id 
    FROM departments
    WHERE dept_name = "Sales"
);

-- Find the department with the highest paid employee
SELECT dept_name
FROM departments
WHERE dept_id = (
    SELECT department_id
    FROM employees
    WHERE salary = (
        SELECT MAX(salary)
        FROM employees
    )
);

-- Find employees working in departments located in New York, Pune, or Boston
SELECT emp_name 
FROM employees
WHERE department_id IN (
    SELECT dept_id 
    FROM departments
    WHERE location IN ("New York", "Pune", "Boston")
);

-- Find employees with department_id greater than any in New York, Pune, or Boston
SELECT emp_name 
FROM employees
WHERE department_id > ANY (
    SELECT dept_id 
    FROM departments
    WHERE location IN ("New York", "Pune", "Boston")
);

-- Find employees with department_id greater than all in New York, Pune, or Boston
SELECT emp_name 
FROM employees
WHERE department_id > ALL (
    SELECT dept_id 
    FROM departments
    WHERE location IN ("New York", "Pune", "Boston")
);

-- Find departments with employees earning more than 60000
SELECT dept_name 
FROM departments 
WHERE dept_id IN (
    SELECT dept_id 
    FROM employees
    WHERE salary > 60000
);

-- Find the second highest salary
SELECT MAX(salary) 
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

-- Using database 'loadingfile'
USE loadingfile;

-- Show all tables in the 'loadingfile' database
SHOW TABLES;

-- Select all records from 'airline_info' table
SELECT * FROM airline_info;

-- Count the number of records in the 'airline_info' table
SELECT COUNT(*) FROM airline_info;

-- Select records from 'airline_info' where airline is 'GO_FIRST'
SELECT * FROM airline_info WHERE airline = "GO_FIRST";


-- Index
-- An index in SQL is a database object used to speed up the retrieval of rows by using a pointer.
-- Indexes can be created on one or more columns of a table to enhance query performance.
-- Proper indexing can significantly improve the efficiency of SELECT queries and overall database performance.


-- Create an index on the 'airline' column of the 'airline_info' table
CREATE INDEX airline_details ON airline_info(airline); 

-- Show indexes from 'airline_info' table
SHOW INDEX FROM airline_info;

-- Show all tables
SHOW TABLES;

-- Describe the 'employees' table
DESCRIBE employees;

-- Create an index on the 'emp_name' column of the 'employees' table
CREATE INDEX emp_name_info ON employees(emp_name);

-- Show indexes from the 'employees' table
SHOW INDEX FROM employees;

-- Drop the index on the 'emp_name' column of the 'employees' table
ALTER TABLE employees
DROP INDEX emp_name_info;
