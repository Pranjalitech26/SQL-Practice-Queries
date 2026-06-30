-- ===========================================
-- Aggregate Functions
-- ===========================================


-- ===========================================
-- COUNT()
-- ===========================================

-- Query 1 - Count Total Employees

SELECT COUNT(*) AS Total_Employees
FROM employees;


-- ===========================================
-- SUM()
-- ===========================================

-- Query 2 - Calculate Total Salary

SELECT SUM(salary) AS Total_Salary
FROM employees;


-- ===========================================
-- AVG()
-- ===========================================

-- Query 3 - Calculate Average Salary

SELECT AVG(salary) AS Average_Salary
FROM employees;


-- ===========================================
-- MIN()
-- ===========================================

-- Query 4 - Find Minimum Salary

SELECT MIN(salary) AS Minimum_Salary
FROM employees;


-- ===========================================
-- MAX()
-- ===========================================

-- Query 5 - Find Maximum Salary

SELECT MAX(salary) AS Maximum_Salary
FROM employees;


-- ===========================================
-- GROUP BY
-- ===========================================

-- Query 6 - Count Employees in Each Department

SELECT
    department_id,
    COUNT(*) AS Total_Employees
FROM employees
GROUP BY department_id;


-- Query 7 - Calculate Total Salary by Department

SELECT
    department_id,
    SUM(salary) AS Total_Salary
FROM employees
GROUP BY department_id;


-- Query 8 - Calculate Average Salary by Department

SELECT
    department_id,
    AVG(salary) AS Average_Salary
FROM employees
GROUP BY department_id;


-- ===========================================
-- HAVING
-- ===========================================

-- Query 9 - Departments with More Than One Employee

SELECT
    department_id,
    COUNT(*) AS Total_Employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 1;


-- Query 10 - Departments with Average Salary Greater Than 50000

SELECT
    department_id,
    AVG(salary) AS Average_Salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 50000;
