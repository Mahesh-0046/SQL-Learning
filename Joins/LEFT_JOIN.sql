--1. Basic LEFT JOIN: Shows all employees
--If an employee’s department is not found → LOCATION = NULL
SELECT E.EMP_ID, E.NAME, D.LOCATION
FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME;

--2. Find Employees Without Departments
--Shows employees whose department does not exist in the departments table.
SELECT E.NAME
FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME
WHERE D.DEPT_NAME IS NULL;

--3.LEFT JOIN with Multiple Conditions
--Joins departments only if location is HYDERABAD.
SELECT E.NAME, D.LOCATION
FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME
AND D.LOCATION = 'HYDERABAD';