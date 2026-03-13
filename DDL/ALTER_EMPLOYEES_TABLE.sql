-- Add a new column for email
ALTER TABLE EMPLOYEES ADD EMAIL VARCHAR(70) UNIQUE;

-- Modify salary column to have two decimal points
ALTER TABLE EMPLOYEES
ALTER COLUMN SALARY TYPE DECIMAL(10,2); 