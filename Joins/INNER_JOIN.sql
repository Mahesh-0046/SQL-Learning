--1️ INNER JOIN Examplesp: Employee with department location
--Explanation:Joins employees with their department details.
--Only employees whose department exists in the DEPARTMENTS table will appear.   
SELECT E.EMP_ID, E.NAME,
	   E.DEPARTMENT, D.LOCATION 
	   FROM EMPLOYEES E
	   INNER JOIN DEPARTMENTS D
	   ON E.DEPARTMENT = D.DEPT_NAME;

--2. INNER JOIN
--Tables: EMPLOYEES, DEPARTMENTS. 
SELECT E.NAME, E.SALARY, D.DEPT_NAME
FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME;

--3. INNER JOIN with Condition
--Shows employees who work in departments located in Delhi.
SELECT E.EMP_ID, E.NAME, D.LOCATION
FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME
WHERE D.LOCATION = 'Delhi'; 

--5. INNER JOIN with Multiple Conditions
--Joins tables only if department matches AND location is Bangalore.
SELECT E.NAME, D.DEPT_NAME
FROM EMPLOYEES E
INNER JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME
AND D.LOCATION = 'Bangalore';