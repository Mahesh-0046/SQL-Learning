--Find employees whose salary is greater than their department average
SELECT * FROM EMPLOYEES E
WHERE E.SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES
WHERE DEPT_ID = E.DEPT_ID);

--Find employees whose salary is greater than their department average
SELECT * FROM EMPLOYEES E
WHERE E.SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES
WHERE DEPT_ID = E.DEPT_ID);

--Find employees who have the highest salary in their department
SELECT * FROM EMPLOYEES E
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES
WHERE DEPT_ID = E.DEPT_ID);

--Find employees who have the lowest salary in their department
SELECT * FROM EMPLOYEES E
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES
WHERE DEPT_ID = E.DEPT_ID);

--Find employees who work in departments where more than 2 employees exist
SELECT * FROM EMPLOYEES E
WHERE (SELECT COUNT(*) FROM EMPLOYEES
WHERE DEPT_ID = E.DEPT_ID) > 2;