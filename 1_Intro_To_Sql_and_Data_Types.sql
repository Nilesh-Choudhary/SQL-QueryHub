/*
Data
Data is information that can be stored and processed by computers. 
It can be numbers, text, images, or any other type of information. 
Data is often collected, analyzed, and used to make decisions. 
In computing, data is organized in structures like databases to be easily accessed and managed.

Database
A database is a structured collection of data stored on a computer. 
It helps organize and manage information so it can be easily accessed, updated, and analyzed. 
Databases can store various types of data, like customer information or product inventories. 
They are used in many applications, from websites to business systems, to keep track of important information.

RDBMS
An RDBMS stores data in structured tables with rows and columns, similar to a spreadsheet. 
It uses SQL to manage and manipulate this data, allowing you to create, read, update, and delete records. 
Tables can be linked together using relationships, ensuring organized and efficient data handling. 
Additionally, an RDBMS maintains data integrity and security through various constraints and access controls.

SQL
SQL (Structured Query Language) is a programming language used to manage and interact with databases. 
It allows you to create, read, update, and delete data in a database. 
With SQL, you can write queries to retrieve specific information and perform tasks like sorting and filtering data. 
It's widely used in applications that require database management.

MYSQL
MySQL is a popular open-source database management system. 
It helps store and manage data in a structured way using SQL (Structured Query Language). 
MySQL is widely used for web applications and can handle large amounts of data efficiently. 
It's known for its reliability, ease of use, and strong community support.
*/

-- Show all databases
SHOW DATABASES;

-- Create a new database named Tata
CREATE DATABASE Tata;

-- Use the Tata database
USE Tata;

-- Show all tables in the Tata database (should be empty initially)
SHOW TABLES;

-- Create an employee table with appropriate columns
CREATE TABLE employee (
    employeeid INT,
    employeename TEXT,
    employeesalary FLOAT,
    employeeage INT
);

-- Insert sample data into the employee table
insert into employee values
(1001,"Akash",45000,25),
(1002,"Jayesh",30000,35);

-- Select all data from the employee table
SELECT * FROM employee;

/*
Data Types in SQL

-- Numeric Data Types

-- TINYINT: 1 byte, range from -128 to 127 or 0 to 255 (unsigned)
-- SMALLINT: 2 bytes, range from -32,768 to 32,767 or 0 to 65,535 (unsigned)
-- MEDIUMINT: 3 bytes, range from -8,388,608 to 8,388,607 or 0 to 16,777,215 (unsigned)
-- INT or INTEGER: 4 bytes, range from -2,147,483,648 to 2,147,483,647 or 0 to 4,294,967,295 (unsigned)
-- BIGINT: 8 bytes, range from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 or 0 to 18,446,744,073,709,551,615 (unsigned)
-- FLOAT: 4 bytes, approximate range from -3.402823466E+38 to 3.402823466E+38
-- DOUBLE: 8 bytes, approximate range from -1.7976931348623157E+308 to 1.7976931348623157E+308
-- DECIMAL: Variable, exact numeric value with a specified precision and scale


-- Date and Time Data Types

-- DATE: 'YYYY-MM-DD', range from '1000-01-01' to '9999-12-31'
-- DATETIME: 'YYYY-MM-DD HH:MM:SS', range from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'
-- TIMESTAMP: 'YYYY-MM-DD HH:MM:SS', range from '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' UTC
-- TIME: 'HH:MM:SS', range from '-838:59:59' to '838:59:59'
-- YEAR: 1 byte, range from 1901 to 2155


-- String Data Types

-- CHAR: Fixed length, range from 0 to 255 characters
-- VARCHAR: Variable length, range from 0 to 65,535 characters
-- TEXT: Variable length, range from 0 to 65,535 characters
-- TINYTEXT: Variable length, range from 0 to 255 characters
-- MEDIUMTEXT: Variable length, range from 0 to 16,777,215 characters
-- LONGTEXT: Variable length, range from 0 to 4,294,967,295 characters

*/