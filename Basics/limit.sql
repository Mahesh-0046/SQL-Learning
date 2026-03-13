--1. Basic LIMIT (Return only the first 3 rows:)
SELECT * FROM STUDENT
LIMIT 3;

--2. LIMIT with ORDER BY (Get the top 2 students by marks)
SELECT * FROM STUDENT 
ORDER BY MARKS DESC 
LIMIT 2;

--3. LIMIT with OFFSET (Skip the first 2 rows and get the next 2 rows)
SELECT * FROM STUDENT
ORDER BY STUDENT_ID
LIMIT 2 OFFSET 2;

--4. LIMIT with WHERE (Get first 2 students with marks > 75)
SELECT * FROM STUDENT
WHERE MARKS > 75
ORDER BY MARKS DESC
LIMIT 2;