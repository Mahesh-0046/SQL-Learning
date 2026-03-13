--DISTINCT ON ONE COLUMN
SELECT DISTINCT COURSE
FROM STUDENT;
--RESULT: Even though CSE appears twice, it is shown only once.

--DISTINCT ON CITY COLUMN
SELECT DISTINCT CITY 
FROM STUDENT;
--RESULT: Even though CHENNAI appears twice, it is shown only once.

--DISTINCT WITH WHERE
SELECT DISTINCT COURSE
FROM STUDENT
WHERE CITY = 'DELHI';
--RESULT: Shows unique courses for students in Delhi.

--DISTINCT with ORDER BY
SELECT DISTINCT COURSE
FROM STUDENT
ORDER BY COURSE;
--RESULT: Shows unique courses sorted alphabetically.