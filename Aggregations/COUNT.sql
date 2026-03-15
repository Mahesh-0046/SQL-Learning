--1. COUNT – Count rows
--Counts the number of records
SELECT COUNT(*) FROM EMPLOYEES;

--2. Count Rows with Condition
--Count only employees in a specific department:
SELECT COUNT(*) AS SALES_EMPLOYEES FROM EMPLOYEES
WHERE DEPARTMENT = 'Sales';

--3. Count Distinct Values
--Count unique departments
SELECT COUNT(DISTINCT DEPARTMENT) AS UNIQUE_DEPARTMENT 
FROM EMPLOYEES;

--4. Count With GROUP BY
--Count employees per department
SELECT DEPARTMENT, COUNT(*) FROM EMPLOYEES
GROUP BY DEPARTMENT;