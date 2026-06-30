-- ===========================================
-- Basic SQL Queries
-- ===========================================


-- ===========================================
-- SELECT
-- ===========================================

-- Query 1 - Display All Records from Departments

SELECT *
FROM departments;


-- Query 2 - Display All Records from Employees

SELECT *
FROM employees;


-- Query 3 - Display All Records from Customers

SELECT *
FROM customers;


-- Query 4 - Display All Records from Products

SELECT *
FROM products;


-- Query 5 - Display All Records from Orders

SELECT *
FROM orders;


-- Query 6 - Display All Records from Sales

SELECT *
FROM sales;


-- Query 7 - Display Selected Columns

SELECT
    first_name,
    last_name,
    salary
FROM employees;


-- ===========================================
-- SELECT DISTINCT
-- ===========================================

-- Query 8 - Display Unique Department IDs

SELECT DISTINCT department_id
FROM employees;


-- ===========================================
-- WHERE
-- ===========================================

-- Query 9 - Employees with Salary Greater Than 50000

SELECT *
FROM employees
WHERE salary > 50000;


-- Query 10 - Employees with Salary Less Than 50000

SELECT *
FROM employees
WHERE salary < 50000;


-- Query 11 - Employees with Salary Equal to 55000

SELECT *
FROM employees
WHERE salary = 55000;


-- Query 12 - Employees with Salary Not Equal to 55000

SELECT *
FROM employees
WHERE salary <> 55000;


-- ===========================================
-- BETWEEN
-- ===========================================

-- Query 13 - Employees with Salary Between 45000 and 60000

SELECT *
FROM employees
WHERE salary BETWEEN 45000 AND 60000;


-- ===========================================
-- NOT BETWEEN
-- ===========================================

-- Query 14 - Employees Outside Salary Range

SELECT *
FROM employees
WHERE salary NOT BETWEEN 45000 AND 60000;


-- ===========================================
-- IN
-- ===========================================

-- Query 15 - Employees from Department 1 and 2

SELECT *
FROM employees
WHERE department_id IN (1,2);


-- ===========================================
-- NOT IN
-- ===========================================

-- Query 16 - Employees Not from Department 1 and 2

SELECT *
FROM employees
WHERE department_id NOT IN (1,2);


-- ===========================================
-- LIKE
-- ===========================================

-- Query 17 - Employees Whose First Name Starts with 'R'

SELECT *
FROM employees
WHERE first_name LIKE 'R%';


-- ===========================================
-- ILIKE
-- ===========================================

-- Query 18 - Employees Whose Email Contains 'email'

SELECT *
FROM employees
WHERE email ILIKE '%email%';


-- ===========================================
-- AND
-- ===========================================

-- Query 19 - Employees with Salary Greater Than 50000 and Department 3

SELECT *
FROM employees
WHERE salary > 50000
AND department_id = 3;


-- ===========================================
-- OR
-- ===========================================

-- Query 20 - Employees from Department 1 or Department 2

SELECT *
FROM employees
WHERE department_id = 1
OR department_id = 2;


-- ===========================================
-- ORDER BY
-- ===========================================

-- Query 21 - Display Employees by Salary (Highest to Lowest)

SELECT *
FROM employees
ORDER BY salary DESC;


-- Query 22 - Display Employees by First Name (A to Z)

SELECT *
FROM employees
ORDER BY first_name ASC;


-- ===========================================
-- LIMIT
-- ===========================================

-- Query 23 - Display First 5 Employees

SELECT *
FROM employees
LIMIT 5;


-- ===========================================
-- OFFSET
-- ===========================================

-- Query 24 - Skip First 5 Employees

SELECT *
FROM employees
LIMIT 100
OFFSET 5;


-- ===========================================
-- LIMIT & OFFSET
-- ===========================================

-- Query 25 - Display 5 Employees After Skipping First 2

SELECT *
FROM employees
LIMIT 5
OFFSET 2;


-- ===========================================
-- AS
-- ===========================================

-- Query 26 - Rename Column Names

SELECT
    first_name AS First_Name,
    last_name AS Last_Name,
    salary AS Employee_Salary
FROM employees;


-- ===========================================
-- ROUND
-- ===========================================

-- Query 27 - Display Employee Salary After 10% Increment

SELECT
    first_name,
    salary,
    ROUND(salary * 1.10, 2) AS Updated_Salary
FROM employees;
