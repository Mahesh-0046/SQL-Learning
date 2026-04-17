--Write a query to find Top 3 salaries in each department
--Requirements:
--Each department separately
--Handle ties properly
WITH CTE AS(
SELECT NAME, DEPT_ID, SALARY,
	DENSE_RANK() OVER(PARTITION BY DEPT_ID ORDER BY SALARY DESC) AS RANK_
FROM EMPLOYEES
)
SELECT NAME, DEPT_ID, SALARY, RANK_ FROM CTE
WHERE RANK_ <= 3; 

--Write a query to find employees who earn more than their department average salary
--Requirements:
--Compare each employee with their own department average
--Return: name, dept_id, salary
WITH CTE AS(
SELECT NAME, DEPT_ID, SALARY,
	AVG(SALARY) OVER(PARTITION BY DEPT_ID) AS AVG_SAL
FROM EMPLOYEES
)
SELECT NAME, DEPT_ID, SALARY FROM CTE
WHERE SALARY > AVG_SAL;

--Find duplicate records in a table
SELECT NAME, COUNT(*)
FROM EMPLOYEES
GROUP BY NAME
HAVING COUNT(*) > 1;














