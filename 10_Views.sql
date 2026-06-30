-- ===========================================
-- Views
-- ===========================================


-- ===========================================
-- CREATE VIEW
-- ===========================================

-- Query 1 - Create Employee Details View

CREATE VIEW employee_details AS
SELECT
employee_id,
first_name,
last_name,
salary,
department_id
FROM employees;


-- Query 2 - Create Customer Orders View

CREATE VIEW customer_orders AS
SELECT
c.customer_name,
o.order_id,
o.order_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;


-- Query 3 - Create Sales Report View

CREATE VIEW sales_report AS
SELECT
c.customer_name,
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


-- ===========================================
-- SELECT FROM VIEW
-- ===========================================

-- Query 4 - Display Employee Details View

SELECT *
FROM employee_details;


-- Query 5 - Display Customer Orders View

SELECT *
FROM customer_orders;


-- Query 6 - Display Sales Report View

SELECT *
FROM sales_report;


-- ===========================================
-- DROP VIEW
-- ===========================================

-- Query 7 - Drop Employee Details View

DROP VIEW employee_details;


-- Query 8 - Drop Customer Orders View

DROP VIEW customer_orders;


-- Query 9 - Drop Sales Report View

DROP VIEW sales_report;
