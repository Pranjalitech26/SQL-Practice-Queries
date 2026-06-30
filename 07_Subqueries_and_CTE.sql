-- ===========================================
-- Subqueries and CTE
-- ===========================================


-- ===========================================
-- SUBQUERY
-- ===========================================

-- Query 1 - Employees with Maximum Salary

SELECT *
FROM employees
WHERE salary = (
SELECT MAX(salary)
FROM employees
);


-- Query 2 - Employees with Salary Greater Than Average Salary

SELECT *
FROM employees
WHERE salary > (
SELECT AVG(salary)
FROM employees
);


-- Query 3 - Customers Who Placed Orders

SELECT *
FROM customers
WHERE customer_id IN (
SELECT customer_id
FROM orders
);


-- Query 4 - Products Sold in Sales

SELECT *
FROM products
WHERE product_id IN (
SELECT product_id
FROM sales
);


-- ===========================================
-- CORRELATED SUBQUERY
-- ===========================================

-- Query 5 - Employees Earning More Than Department Average

SELECT
e1.employee_id,
e1.first_name,
e1.salary,
e1.department_id
FROM employees e1
WHERE salary >
(
SELECT AVG(e2.salary)
FROM employees e2
WHERE e1.department_id = e2.department_id
);


-- ===========================================
-- EXISTS
-- ===========================================

-- Query 6 - Customers Who Have Placed Orders

SELECT
customer_id,
customer_name
FROM customers c
WHERE EXISTS (
SELECT 1
FROM orders o
WHERE c.customer_id = o.customer_id
);


-- ===========================================
-- NOT EXISTS
-- ===========================================

-- Query 7 - Customers Who Have Not Placed Any Orders

SELECT
customer_id,
customer_name
FROM customers c
WHERE NOT EXISTS (
SELECT 1
FROM orders o
WHERE c.customer_id = o.customer_id
);


-- ===========================================
-- COMMON TABLE EXPRESSION (CTE)
-- ===========================================

-- Query 8 - Employees with Salary Greater Than 50000

WITH EmployeeCTE AS
(
SELECT
employee_id,
first_name,
last_name,
salary
FROM employees
WHERE salary > 50000
)

SELECT *
FROM EmployeeCTE;


-- Query 9 - Department Wise Average Salary

WITH DepartmentSalary AS
(
SELECT
department_id,
AVG(salary) AS Average_Salary
FROM employees
GROUP BY department_id
)

SELECT *
FROM DepartmentSalary;


-- Query 10 - Employees Earning Above Department Average

WITH DepartmentSalary AS
(
SELECT
department_id,
AVG(salary) AS Average_Salary
FROM employees
GROUP BY department_id
)

SELECT
e.employee_id,
e.first_name,
e.salary,
d.Average_Salary
FROM employees e
INNER JOIN DepartmentSalary d
ON e.department_id = d.department_id
WHERE e.salary > d.Average_Salary;
