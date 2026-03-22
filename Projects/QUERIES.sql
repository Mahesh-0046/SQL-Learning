-- Find all employees
SELECT *
FROM employee;

-- Find all clients
SELECT *
FROM clients;

-- Find all employees ordered by salary
SELECT *
from employee
ORDER BY salary;

-- Find all employees ordered by sex then name
SELECT *
from employee
ORDER BY sex, name;

-- Find the first 5 employees in the table
SELECT *
from employee
LIMIT 5;

-- Find the first and last names of all employees
SELECT first_name, employee.last_name
FROM employee;

-- Find the forename and surnames names of all employees
SELECT first_name AS forename, employee.last_name AS surname
FROM employee;

-- Find out all the different genders
SELECT DISCINCT sex
FROM employee;

-- Find all male employees
SELECT *
FROM employee
WHERE sex = 'M';


-- Find all employee's id's and names who were born after 1969
SELECT emp_id, first_name, last_name
FROM employee
WHERE birth_day >= 1970-01-01;

-- Find the average of all employee's salaries
SELECT AVG(salary)
FROM employee;

-- Find the sum of all employee's salaries
SELECT SUM(salary)
FROM employee;

-- Find out how many males and females there are
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex

-- Find the total sales of each salesman
SELECT EMP_ID, SUM(total_sales)
FROM works_with
GROUP BY EMP_ID, client_id;

-- Find the total amount of money spent by each client
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;

-- Find any client's who are an LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find any branch suppliers who are in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%LABEL%';

-- Find any employee born IN OCTOBER
SELECT * 
FROM EMPLOYEE
WHERE EXTRACT(MONTH FROM BIRTH_DATE) = 10;

--FIND ANY CLIENTS WHO ARE SCHOLLS
SELECT * FROM CLIENT
WHERE CLIENT_NAME LIKE '%SCHOOL';


-----------------------------------UNION-----------------------------------

--FIND LIST OF EMPLOYEES AND BRANCH NAMES
SELECT FIRST_NAME FROM EMPLOYEE
UNION
SELECT BRANCH_NAME FROM BRANCH;

--FIND LIST OF EMPLOYEES AND BRANCH NAMES AND CLIENT NAMES
SELECT FIRST_NAME FROM EMPLOYEE
UNION
SELECT BRANCH_NAME FROM BRANCH
UNION
SELECT CLIENT_NAME FROM CLIENT;

--FIND A LIST OF ALL CLIENTS & BRANCH SUPPLIER'S NAMES
SELECT CLIENT_NAME, CLIENT.BRANCH_ID FROM CLIENT
UNION
SELECT SUPPLIER_NAME, BRANCH_SUPPLIER.BRANCH_ID FROM BRANCH_SUPPLIER;

--FIND A LIST OF ALL MONEY SPENT OR EARNED BY THE COMPANY
SELECT SUM(SALARY) FROM EMPLOYEE
UNION
SELECT SUM(TOTAL_SALES) FROM WORKS_WITH;

INSERT INTO BRANCH VALUES(4, 'BUFFALO', NULL, NULL);


------------------------------JOINS-------------------------------------
--FIND ALL BRANCHES AND THE NAMES OF THEIR MANAGERS
--INNER JOIN
SELECT E.EMP_ID, E.FIRST_NAME, E.LAST_NAME, B.BRANCH_NAME, B.MGR_ID
FROM EMPLOYEE E
INNER JOIN BRANCH B
ON E.EMP_ID = B.MGR_ID;

--LEFT JOIN
SELECT E.EMP_ID, E.FIRST_NAME, E.LAST_NAME, B.BRANCH_NAME, B.MGR_ID
FROM EMPLOYEE E
LEFT JOIN BRANCH B
ON E.EMP_ID = B.MGR_ID;

--RIGHT JOIN
SELECT E.EMP_ID, E.FIRST_NAME, E.LAST_NAME, B.BRANCH_NAME, B.MGR_ID
FROM EMPLOYEE E
RIGHT JOIN BRANCH B
ON E.EMP_ID = B.MGR_ID;

--FULL OUTER JOIN
SELECT E.EMP_ID, E.FIRST_NAME, E.LAST_NAME, B.BRANCH_NAME, B.MGR_ID
FROM EMPLOYEE E
FULL OUTER JOIN BRANCH B
ON E.EMP_ID = B.MGR_ID;
------------------------------------------------------------------------

--------------------------NESTED QUERIES-------------------------------

--FIND NAMES OF ALL EMPLOYEES WHO SOLD OVER 30000 TO A SINGLE CLIENT
SELECT E.EMP_ID, E.FIRST_NAME, E.LAST_NAME, W.TOTAL_SALES 
FROM WORKS_WITH W
JOIN EMPLOYEE E
ON E.EMP_ID = W.EMP_ID
WHERE W.TOTAL_SALES > 30000;
-----SAME WITH NESTED QUERY---------------
SELECT E.EMP_ID, E.FIRST_NAME, E.LAST_NAME
FROM EMPLOYEE E
WHERE E.EMP_ID IN(
SELECT W.EMP_ID FROM WORKS_WITH W
WHERE W.TOTAL_SALES > 30000
);

-- Find all clients who are handleD by the branch 
-- that Michael Scott manages
-- Assume you DONT'T know Michael's ID
SELECT C.CLIENT_ID, C.CLIENT_NAME FROM CLIENT C
WHERE C.BRANCH_ID IN(
SELECT E.BRANCH_ID FROM EMPLOYEE E
WHERE E.FIRST_NAME = 'MICHAEL'
);