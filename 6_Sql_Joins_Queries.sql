USE comp_emp;

-- Switch to the 'comp_emp' database
SHOW TABLES;

-- Show all tables in the 'comp_emp' database
SELECT * FROM courses;

-- This query retrieves all records and columns from the 'courses' table.
SELECT * FROM students;

-- JOINs:
-- INNER JOIN:
-- Retrieves records that have matching values in both tables.
-- Use it to get the intersection of two tables based on a common column.

-- Perform an INNER JOIN between 'students' and 'courses' on 'course_id'
SELECT * FROM students
INNER JOIN courses
ON students.course_id = courses.course_id;

-- Example of an INNER JOIN with a mistake (student_id instead of course_id)
SELECT * FROM students
INNER JOIN courses
ON students.student_id = courses.course_id;

-- INNER JOIN using the shorthand 'JOIN'
SELECT * FROM students
JOIN courses
ON students.course_id = courses.course_id;

-- INNER JOIN with selected columns
SELECT students.student_name, courses.course_name, students.course_id FROM students
JOIN courses
ON students.course_id = courses.course_id;

-- LEFT JOIN:
-- Retrieves all records from the left table and the matched records from the right table.
-- Use it to get all records from the left table and only matching records from the right table.

-- Perform a LEFT JOIN between 'students' and 'courses' on 'course_id'
SELECT * FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id;

-- RIGHT JOIN:
-- Retrieves all records from the right table and the matched records from the left table.
-- Use it to get all records from the right table and only matching records from the left table.

-- Perform a RIGHT JOIN between 'students' and 'courses' on 'course_id'
SELECT * FROM students
RIGHT JOIN courses
ON students.course_id = courses.course_id;

-- FULL OUTER JOIN:
-- Retrieves all records when there is a match in either left or right table.
-- Use it to get all records from both tables and match where possible.

-- FULL JOIN or FULL OUTER JOIN does not work in MySQL database management system.
-- MySQL does not directly support FULL OUTER JOIN.
-- To achieve similar results, you can use a combination of LEFT JOIN and RIGHT JOIN with UNION.

-- Perform a FULL OUTER JOIN between 'students' and 'courses' on 'course_id'
SELECT * FROM students
FULL OUTER JOIN courses
ON students.course_id = courses.course_id;

-- FULL JOIN or FULL OUTER JOIN does not work in MySQL database management system.
-- MySQL does not directly support FULL OUTER JOIN.
-- To achieve similar results, you can use a combination of LEFT JOIN and RIGHT JOIN with UNION.
-- That's why we use LEFT JOIN and RIGHT JOIN with UNION to simulate a FULL OUTER JOIN.

-- Simulate FULL OUTER JOIN using UNION of LEFT and RIGHT JOINs
SELECT * FROM students
LEFT JOIN courses
ON students.course_id = courses.course_id
UNION
SELECT * FROM students
RIGHT JOIN courses
ON students.course_id = courses.course_id;

-- CROSS JOIN:
-- Returns the Cartesian product of the two tables.
-- Use it to combine all rows from both tables.

-- Perform a CROSS JOIN between 'students' and 'courses'
SELECT * FROM students
CROSS JOIN courses;

-- Group by course_name and count the number of students enrolled
SELECT courses.course_name, COUNT(*) AS students_enrolled
FROM courses
JOIN students
ON courses.course_id = students.course_id
GROUP BY courses.course_name;

-- Group by course_name and calculate the average age of students in each course
SELECT c.course_name, AVG(age) AS avg_student_age
FROM courses c
JOIN students s
ON c.course_id = s.course_id
GROUP BY c.course_name;

-- Retrieve students' names and their courses where the course name is "Mathematics"
SELECT s.student_name, c.course_name FROM students s
JOIN courses c
ON c.course_id = s.course_id
WHERE c.course_name = "Mathematics";
