--1.Basic FULL OUTER JOIN
--Shows all employees
--Shows all departments
--If no match → NULL values appear.
SELECT * FROM EMPLOYEES E
FULL OUTER JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME;

--2.FULL OUTER JOIN with WHERE Condition
--Filters results but still keeps unmatched rows.
SELECT * FROM EMPLOYEES E
FULL OUTER JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME
WHERE D.LOCATION = 'DELHI'
OR E.NAME IS NOT NULL;

--3.Find Unmatched Records
--Employees without departments
--Departments without employees.
SELECT E.NAME, D.DEPT_NAME
FROM EMPLOYEES E
FULL OUTER JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME
WHERE E.EMP_ID IS NULL
OR D.DEPT_NAME IS NULL;