CREATE TABLE EMPLOYEES (
EMP_ID INT PRIMARY KEY,
NAME VARCHAR(40),
DEPARTMENT VARCHAR(50),
SALARY INT,
GENDER VARCHAR(10)
);

INSERT INTO EMPLOYEES VALUES
(1, 'Rahul', 'Sales', 50000, 'Male'),
(2, 'Anita', 'HR', 60000, 'Female'),
(3, 'Kiran', 'Sales', 55000, 'Male'),
(4, 'Priya', 'IT', 70000, 'Female'),
(5, 'Arjun', 'IT', 65000, 'Male'),
(6, 'Meena', 'HR', 62000, 'Female'),
(7, 'Ravi', 'Sales', 52000, 'Male');

SELECT * FROM EMPLOYEES;