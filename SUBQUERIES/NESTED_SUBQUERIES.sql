--Find employees whose salary is greater than the average salary of all employees
SELECT * FROM EMPLOYEES 
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);

--Find employees who have the minimum salary in the company
SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES);

--Find employees who have the maximum salary in the company
SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);

--Find employees whose salary is greater than the salary of 'Ram'
SELECT * FROM EMPLOYEES
WHERE SALARY > (SELECT SALARY FROM EMPLOYEES
WHERE NAME = 'Ram');

--Find employees whose salary is between minimum and maximum salary
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 
(SELECT MIN(SALARY) FROM EMPLOYEES) AND 
(SELECT MAX(SALARY) FROM EMPLOYEES);