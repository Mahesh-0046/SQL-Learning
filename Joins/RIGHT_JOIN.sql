--1.Basic RIGHT JOIN Example
--Shows all departments
--If a department has no employees, employee columns will be NULL
SELECT * FROM EMPLOYEES E
RIGHT JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME;

--2.RIGHT JOIN with WHERE Condition
--Shows departments in DELHI and their employees.
SELECT * FROM EMPLOYEES E
RIGHT JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME
WHERE D.LOCATION = 'Delhi';

--3.Find Departments Without Employees
--Shows departments that have no employees.
SELECT * FROM EMPLOYEES E
RIGHT JOIN DEPARTMENTS D
ON E.DEPARTMENT = D.DEPT_NAME
WHERE D.LOCATION IS NULL;