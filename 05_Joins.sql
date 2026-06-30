-- ===========================================
-- SQL Joins
-- ===========================================


-- ===========================================
-- INNER JOIN
-- ===========================================

-- Query 1 - Display Employee with Department Name

SELECT
e.employee_id,
e.first_name,
e.last_name,
d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;


-- Query 2 - Display Orders with Customer Name

SELECT
o.order_id,
c.customer_name,
o.order_date
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;


-- ===========================================
-- LEFT JOIN
-- ===========================================

-- Query 3 - Display All Employees with Department Details

SELECT
e.employee_id,
e.first_name,
d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;


-- Query 4 - Display All Customers with Their Orders

SELECT
c.customer_name,
o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;


-- ===========================================
-- RIGHT JOIN
-- ===========================================

-- Query 5 - Display All Departments with Employees

SELECT
e.first_name,
d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;


-- Query 6 - Display All Orders with Customers

SELECT
c.customer_name,
o.order_id
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;


-- ===========================================
-- FULL OUTER JOIN
-- ===========================================

-- Query 7 - Display All Employees and Departments

SELECT
e.first_name,
d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;


-- Query 8 - Display All Customers and Orders

SELECT
c.customer_name,
o.order_id
FROM customers c
FULL OUTER JOIN orders o
ON c.customer_id = o.customer_id;


-- ===========================================
-- SELF JOIN
-- ===========================================

-- Query 9 - Display Employees from the Same Department

SELECT
e1.first_name AS Employee_1,
e2.first_name AS Employee_2,
e1.department_id
FROM employees e1
INNER JOIN employees e2
ON e1.department_id = e2.department_id
AND e1.employee_id <> e2.employee_id;


-- ===========================================
-- MULTIPLE JOIN
-- ===========================================

-- Query 10 - Display Customer Orders with Product Details

SELECT
c.customer_name,
o.order_id,
p.product_name,
s.quantity,
s.total_amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN sales s
ON o.order_id = s.order_id
INNER JOIN products p
ON s.product_id = p.product_id;


-- Query 11 - Display Complete Sales Report

SELECT
c.customer_name,
p.product_name,
s.quantity,
s.total_amount,
o.order_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN sales s
ON o.order_id = s.order_id
INNER JOIN products p
ON s.product_id = p.product_id
ORDER BY o.order_date DESC;


-- Query 12 - Display Employee with Department and Salary

SELECT
e.first_name,
e.last_name,
d.department_name,
e.salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
ORDER BY e.salary DESC;
