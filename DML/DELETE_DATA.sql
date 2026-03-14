--Delete a Single Row by ID
--Operation: Removes the student record with ID = 1.
DELETE FROM STUDENTS
WHERE STUDENT_ID = 1;

--Delete Using Name
--Removes the record of the student named Priya.
DELETE FROM STUDENTS
WHERE NAME = 'PRIYA';

--Delete Multiple Rows Using Condition
--Operation: Deletes all students whose Age is less than 20.
DELETE FROM STUDENTS
WHERE AGE < 20;

--Delete Multiple Rows Using IN
--Operation: Deletes the students with IDs 3, 4, and 5.
DELETE FROM STUDENTS
WHERE STUDENT_ID IN (3, 4, 5);


--Delete All Records (No WHERE Clause)
--Operation: Deletes all records in the table.
DELETE FROM STUDENTS;

--TO CHECK TABLE
SELECT * FROM STUDENTS;
