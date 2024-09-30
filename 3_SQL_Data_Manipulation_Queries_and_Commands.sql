-- Switch to the 'employe' database
USE employe;


-- Show all tables in the 'employe' database
SHOW TABLES;


-- Select all columns from the 'employee2' table
SELECT * FROM employee2;


-- Select the 'empname' column from the 'employee2' table
SELECT empname FROM employee2;


-- Select the 'empname' and 'salary' columns from the 'employee2' table
SELECT empname, salary FROM employee2;

-- WHERE Clause: 
-- Syntax: SELECT * FROM table_name WHERE condition;
-- Used to filter records based on specific conditions.
-- Use it to retrieve only those records that meet the defined criteria.


-- Select all columns from the 'employee2' table where 'empcode' is 103
SELECT * FROM employee2 WHERE empcode = 103;


-- Select all columns from the 'employee2' table where 'empname' is 'Akash'
SELECT * FROM employee2 WHERE empname = "Akash";


-- Switch to the 'today' database
USE today;

-- Relational/Comparison Operators: Used to compare values
-- > : Greater than
-- >= : Greater than or equal to
-- < : Less than
-- <= : Less than or equal to
-- <> or != : Not equal to
-- = : Equal to

-- Select all columns from the 'employee' table
SELECT * FROM employee;


-- Select all columns from the 'employee' table where 'employee_salary' is greater than 60000
SELECT * FROM employee WHERE employee_salary > 60000;


-- Select all columns from the 'employee' table where 'employee_salary' is greater than or equal to 60000
SELECT * FROM employee WHERE employee_salary >= 60000;


-- Select all columns from the 'employee' table where 'employee_salary' is less than 60000
SELECT * FROM employee WHERE employee_salary < 60000;


-- Select all columns from the 'employee' table where 'employee_salary' is less than or equal to 60000
SELECT * FROM employee WHERE employee_salary <= 60000;


-- Select all columns from the 'employee' table where 'employee_salary' is equal to 60000
SELECT * FROM employee WHERE employee_salary = 60000;


-- Select all columns from the 'employee' table where 'employee_salary' is not equal to 60000
SELECT * FROM employee WHERE employee_salary != 60000;


-- Select all columns from the 'employee' table where 'employee_salary' is not equal to 60000 (using <>)
SELECT * FROM employee WHERE employee_salary <> 60000;


-- Select the 'employee_name' column from the 'employee' table where 'employee_city' is 'Pune'
SELECT employee_name FROM employee WHERE employee_city = "Pune";

-- Data Manipulation Language (DML): Used to manage data within tables
-- Data Manipulation Language (DML):
-- Includes commands like SELECT, INSERT, UPDATE, and DELETE.
-- Used to manage and manipulate data within tables.
-- These commands allow querying, inserting, updating, and deleting records.

-- Select all columns from the 'employee' table
SELECT * FROM employee;

-- UPDATE Clause:
-- Syntax: UPDATE table_name SET column_name = value WHERE condition;
-- Used to modify existing records in a table.
-- Use it to update the values of specified columns for records that meet the condition.
-- Syntax: UPDATE table_name SET column_name = value WHERE condition;

-- Update the 'employee_city' to 'Bangalore' for the record where 'employee_id' is 5
UPDATE employee SET employee_city = "Bangalore" WHERE employee_id = 5;


-- Update the 'employee_department' to 'Testing' and 'employee_city' to 'Mumbai' for the record where 'employee_id' is 25
UPDATE employee SET employee_department = "Testing", employee_city = "Mumbai" WHERE employee_id = 25;


-- If you need to disable safe updates mode, use the following command
SET sql_safe_updates = 0;

-- DELETE Clause:
-- Used to remove existing records from a table.
-- Use it when you need to permanently delete records that match the specified condition.
-- Syntax: DELETE FROM table_name WHERE condition;


-- Delete the record from the 'employee' table where 'employee_id' is 30
DELETE FROM employee WHERE employee_id = 30;


-- Delete records from the 'employee' table where 'employee_salary' is greater than 50000
DELETE FROM employee WHERE employee_salary > 50000;


-- Create the 'employee_information' database
CREATE DATABASE employee_information;

-- Switch to the 'employee_information' database
USE employee_information;

-- Show all tables in the 'employee_information' database
SHOW TABLES;

-- Select all columns from the 'employee' table
SELECT * FROM employee;

-- This query retrieves all records and columns from the 'employee' table.

-- Select all columns from the 'employee' table where 'date_of_joining' is after '2019-01-01'
SELECT * FROM employee WHERE date_of_joining > "2019-01-01";

-- BETWEEN Clause:
-- Syntax: SELECT * FROM table_name WHERE column_name BETWEEN value1 AND value2;
-- Used to filter records within a certain range.
-- Use it to select records where the column value is between two specified values.

-- Select all columns from the 'employee' table where 'salary' is between 55000 and 60000
SELECT * FROM employee WHERE salary BETWEEN 55000 AND 60000;

-- Select all columns from the 'employee' table where 'first_name' is between 'Liam' and 'Olivia'
SELECT * FROM employee WHERE first_name BETWEEN "Liam" AND "Olivia";

-- IN Clause:
-- Syntax: SELECT * FROM table_name WHERE column_name IN (value1, value2, ...);
-- Used to filter records that match any value in a list.
-- Use it to select records where the column value matches any value in the specified list.

-- Select all columns from the 'employee' table where 'department' is either 'Tech' or 'IT'
SELECT * FROM employee WHERE department IN ("Tech", "IT");

-- Update 'salary' to 20% of its current value for employees in the 'IT' department
UPDATE employee SET salary = salary * 0.2 WHERE department = "IT";

-- AND Clause:
-- Syntax: SELECT * FROM table_name WHERE condition1 AND condition2;
-- Used to combine multiple conditions.
-- Use it to select records that meet all specified conditions.

-- AND Logical Operator: Combine conditions
-- Select all columns from the 'employee' table where 'first_name' is 'John', 'department' is 'HR', and 'post' is 'Manager'
SELECT * FROM employee WHERE first_name = "John" AND department = "HR" AND post = "Manager";

-- Update 'department' to 'Finance' for the record where 'first_name' is 'John' and 'last_name' is 'Doe'
UPDATE employee SET department = "Finance" WHERE first_name = "John" AND Last_name = "Doe";

-- OR Clause:
-- Syntax: SELECT * FROM table_name WHERE condition1 OR condition2;
-- Used to combine multiple conditions.
-- Use it to select records that meet at least one of the specified conditions.

-- OR Logical Operator: Combine conditions
-- Select all columns from the 'employee' table where 'first_name' is 'Jack' or 'department' is 'IT'
SELECT * FROM employee WHERE first_name = "Jack" OR department = "IT";

-- Select all columns from the 'employee' table where 'department' is either 'Tech' or 'IT'
SELECT * FROM employee WHERE department IN ("Tech", "IT");

-- Select all columns from the 'employee' table where 'department' is either 'IT' or 'HR'
SELECT * FROM employee WHERE department = "IT" OR department = "HR";

-- Select all columns from the 'employee' table where 'department' is 'IT' or 'first_name' is 'Jack' or 'last_name' is 'Doe'
SELECT * FROM employee WHERE department = "IT" OR first_name = "Jack" OR last_name = "Doe";

-- Select all columns from the 'employee' table where 'salary' is between 55000 and 60000
SELECT * FROM employee WHERE salary >= 55000 AND salary <= 60000;

-- NOT Clause:
-- Syntax: SELECT * FROM table_name WHERE NOT condition;
-- Used to negate a condition.
-- Use it to select records that do not meet the specified condition.

-- NOT Logical Operator: Negate conditions
-- Select all columns from the 'employee' table where 'department' is not 'HR' or 'IT'
SELECT * FROM employee WHERE NOT department IN ("HR", "IT");

-- Select all columns from the 'employee' table where 'department' is not 'IT' and not 'HR'
SELECT * FROM employee WHERE department != "IT" AND department != "HR";

-- Select all columns from the 'employee' table where 'department' is not 'IT' and not 'HR'
SELECT * FROM employee WHERE NOT department = "IT" AND NOT department = "HR";

-- Pattern Matching with LIKE:
-- Syntax: SELECT * FROM table_name WHERE column_name LIKE pattern;
-- Used to filter records that match a specified pattern.
-- Use it to search for specific patterns in text fields.

-- '%' Wildcard:
-- Used with LIKE to represent zero or more characters.
-- Use it to match any sequence of characters.

-- Select all columns from the 'employee' table where 'first_name' starts with 'm'
SELECT * FROM employee WHERE first_name LIKE 'm%';

-- Select all columns from the 'employee' table where 'first_name' ends with 'e'
SELECT * FROM employee WHERE first_name LIKE '%e';

-- Select all columns from the 'employee' table where 'first_name' contains 'be'
SELECT * FROM employee WHERE first_name LIKE '%be%';

-- Select all columns from the 'employee' table where 'salary' starts with '42'
SELECT * FROM employee WHERE salary LIKE '42%';

-- '_' Wildcard:
-- Used with LIKE to represent a single character.
-- Use it to match a specific position in a string.

-- Select all columns from the 'employee' table where 'first_name' has 'a' as the second character
SELECT * FROM employee WHERE first_name LIKE '_a%';

-- Select all columns from the 'employee' table where 'first_name' has 'n' as the third character
SELECT * FROM employee WHERE first_name LIKE '__n';

-- Select all columns from the 'employee' table where 'first_name' matches the pattern '_i%el'
SELECT * FROM employee WHERE first_name LIKE '_i%el';

-- ORDER BY Clause:
-- Syntax: SELECT * FROM table_name ORDER BY column_name [ASC|DESC];
-- Used to sort the result set by one or more columns.
-- Use it to order the retrieved records in ascending or descending order.

-- ORDER BY Clause: Sort the result set
-- Select all columns from the 'employee' table ordered by 'salary' in descending order
SELECT * FROM employee ORDER BY salary DESC;

-- Select all columns from the 'employee' table ordered by 'first_name' in descending order
SELECT * FROM employee ORDER BY first_name DESC;

-- Select all columns from the 'employee' table ordered by 'department'
SELECT * FROM employee ORDER BY department;

-- Select all columns from the 'employee' table ordered by 'department' and then by 'salary' in descending order
SELECT * FROM employee ORDER BY department, salary DESC;

-- Select all columns from the 'employee' table where 'first_name' matches the pattern '_m%'
SELECT * FROM employee WHERE first_name LIKE '_m%';

-- LIMIT Clause:
-- Syntax: SELECT * FROM table_name LIMIT number [OFFSET number];
-- Used to specify the number of records to return.
-- Use it to limit the number of records returned by a query.

-- Select the first 5 records from the 'employee' table
SELECT * FROM employee LIMIT 5;

-- Select the first 2 records from the 'employee' table
SELECT * FROM employee LIMIT 2;

-- Select, WHERE, ORDER BY, and LIMIT clauses together
-- Select all columns from the 'employee' table ordered by 'salary' in descending order and limited to the first record
SELECT * FROM employee ORDER BY salary DESC LIMIT 1;

-- Select all columns from the 'employee' table where 'department' is 'IT', ordered by 'salary' in ascending order, limited to the first record
SELECT * FROM employee WHERE department = "IT" ORDER BY salary ASC LIMIT 1;

-- OFFSET Clause:
-- Syntax: SELECT * FROM table_name LIMIT number OFFSET number;
-- Used to specify the starting point for records to return.
-- Use it to skip a specific number of records before returning the results.

-- Select records from the 'employee' table with an offset
-- Select 10 records from the 'employee' table, starting from the 4th record
SELECT * FROM employee LIMIT 10 OFFSET 3;

-- Select 15 records from the 'employee' table, starting from the 11th record
SELECT * FROM employee LIMIT 15 OFFSET 10;

