--🟢 LEVEL 1 (Basic CTE)
--Get all employees with salary greater than 60,000 using a CTE
WITH CTE_SAL AS (
SELECT * FROM EMPLOYEES
WHERE SALARY > 60000BY
--Find the average salary of all employees using a CTE
WITH AVG_SAL AS (
SELECT AVG(SALARY) FROM EMPLOYEES
)
SELECT * FROM AVG_SAL;

--Get employees whose salary is less than average salary
WITH AVG_SAL AS (
SELECT AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES
)
SELECT * FROM EMPLOYEES E, AVG_SAL
WHERE E.SALARY < AVG_SALARY;