-- ===========================================
-- Set Operators
-- ===========================================


-- ===========================================
-- UNION
-- ===========================================

-- Query 1 - Display Employee and Customer Names

SELECT first_name AS Name
FROM employees

UNION

SELECT customer_name AS Name
FROM customers;


-- Query 2 - Display Employee Emails and Customer Emails

SELECT email
FROM employees

UNION

SELECT email
FROM customers;


-- ===========================================
-- UNION ALL
-- ===========================================

-- Query 3 - Display All Employee and Customer Names

SELECT first_name AS Name
FROM employees

UNION ALL

SELECT customer_name AS Name
FROM customers;


-- Query 4 - Display All Employee and Customer Emails

SELECT email
FROM employees

UNION ALL

SELECT email
FROM customers;


-- ===========================================
-- INTERSECT
-- ===========================================

-- Query 5 - Display Common Email Addresses

SELECT email
FROM employees

INTERSECT

SELECT email
FROM customers;


-- Query 6 - Display Common Names

SELECT first_name AS Name
FROM employees

INTERSECT

SELECT customer_name AS Name
FROM customers;


-- ===========================================
-- EXCEPT
-- ===========================================

-- Query 7 - Display Employee Emails Not Present in Customers

SELECT email
FROM employees

EXCEPT

SELECT email
FROM customers;


-- Query 8 - Display Employee Names Not Present in Customers

SELECT first_name AS Name
FROM employees

EXCEPT

SELECT customer_name AS Name
FROM customers;
