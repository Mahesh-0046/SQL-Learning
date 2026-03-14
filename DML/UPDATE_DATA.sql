-- TO UPDATE A SINGLE COLUMN
--Operation: Updates the Age of the student with ID = 1.
UPDATE STUDENTS
SET AGE = 22
WHERE STUDENT_ID = 1;

--TO UPDATE MULTIPLE COLUMNS
--Operation: Changes both Age and Course for the student with ID = 2.
UPDATE STUDENTS
SET AGE = 22, COURSE = 'EEE'
WHERE STUDENT_ID = 2;

--TO UPDATE USING NAME CONDITION
--Operation: Updates the course for Srinidhi.
UPDATE STUDENTS
SET COURSE = 'ECE'
WHERE NAME = 'SRINIDHI';

--TO Update Multiple Rows
--Operation: Changes the course for all students older than 20.
UPDATE STUDENTS
SET COURSE = 'COMPUTER SCIENCE'
WHERE AGE > 20;

--TO Update All Records (No WHERE Clause)
--Operation: Updates the Age for every student in the table.
UPDATE STUDENTS
SET AGE = 23;

--TO CHECK TABLE
SELECT * FROM STUDENTS;
