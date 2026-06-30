-- ===========================================
-- Window Functions
-- ===========================================


-- ===========================================
-- ROW_NUMBER()
-- ===========================================

-- Query 1 - Assign Row Number to Employees by Salary

SELECT
employee_id,
first_name,
salary,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS Row_Number
FROM employees;


-- ===========================================
-- RANK()
-- ===========================================

-- Query 2 - Rank Employees by Salary

SELECT
employee_id,
first_name,
salary,
RANK() OVER (ORDER BY salary DESC) AS Salary_Rank
FROM employees;


-- ===========================================
-- DENSE_RANK()
-- ===========================================


-- Query 3 - Dense Rank Employees by Salary

SELECT
employee_id,
first_name,
salary,
DENSE_RANK() OVER (ORDER BY salary DESC) AS Dense_Rank
FROM employees;


-- ===========================================
-- LAG()
-- ===========================================

-- Query 4 - Display Previous Employee Salary

SELECT
employee_id,
first_name,
salary,
LAG(salary) OVER (ORDER BY salary) AS Previous_Salary
FROM employees;


-- ===========================================
-- LEAD()
-- ===========================================

-- Query 5 - Display Next Employee Salary

SELECT
employee_id,
first_name,
salary,
LEAD(salary) OVER (ORDER BY salary) AS Next_Salary
FROM employees;


-- ===========================================
-- RUNNING TOTAL
-- ===========================================

-- Query 6 - Calculate Running Total of Sales

SELECT
sale_id,
total_amount,
SUM(total_amount)
OVER (ORDER BY sale_id) AS Running_Total
FROM sales;


-- ===========================================
-- PARTITION BY
-- ===========================================

-- Query 7 - Average Salary by Department

SELECT
employee_id,
first_name,
department_id,
salary,
AVG(salary)
OVER (PARTITION BY department_id) AS Department_Average_Salary
FROM employees;
