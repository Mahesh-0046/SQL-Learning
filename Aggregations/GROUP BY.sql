--1️ Basic GROUP BY
--Count employees in each department.
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

--2️ GROUP BY with SUM
--Total salary per department.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

--3️ GROUP BY with AVG
--Average salary per department.
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

--4️ GROUP BY multiple columns
--Group by department and gender.
SELECT department, gender, COUNT(*) AS total
FROM employees
GROUP BY department, gender;

--5️ GROUP BY with WHERE
--Filter rows before grouping.
--Example: employees with salary > 50000.
SELECT department, COUNT(*) AS employee_count
FROM employees
WHERE salary > 50000
GROUP BY department;

--6️ GROUP BY with HAVING
--Filter groups after aggregation.
--Departments with more than 2 employees.
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;