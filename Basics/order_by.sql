--1.ORDER BY Ascending (Default)
SELECT * FROM STUDENT
ORDER BY AGE;
--Result → students sorted from smallest age to largest age.

--2.ORDER BY Descending
SELECT * FROM STUDENT
ORDER BY AGE DESC;
--Result → students sorted from largest age to smallest age.

--3.ORDER BY Specific Column
SELECT NAME, MARKS FROM STUDEBT
ORDER BY MARKS;
--Result → This sorts students based on marks.

--4. ORDER BY Multiple Columns
SELECT * FROM STUDENT
ORDER BY AGE, MARKS;
--Result → First it sorts by age, then by marks if ages are the same.

--5.ORDER BY with WHERE
SELECT * FROM STUDENT
WHERE MARKS > 70
ORDER BY MARKS DESC;
----Result → Shows students with marks greater than 70, sorted from highest marks to lowest.