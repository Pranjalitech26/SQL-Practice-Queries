-- ===========================================
-- String and Date Functions
-- ===========================================


-- ===========================================
-- UPPER()
-- ===========================================

-- Query 1 - Display Customer Names in Uppercase

SELECT
customer_name,
UPPER(customer_name) AS Upper_Name
FROM customers;


-- ===========================================
-- LOWER()
-- ===========================================

-- Query 2 - Display Customer Names in Lowercase

SELECT
customer_name,
LOWER(customer_name) AS Lower_Name
FROM customers;


-- ===========================================
-- LENGTH()
-- ===========================================

-- Query 3 - Display Length of Customer Names

SELECT
customer_name,
LENGTH(customer_name) AS Name_Length
FROM customers;


-- ===========================================
-- CONCAT()
-- ===========================================

-- Query 4 - Combine Employee First and Last Name

SELECT
CONCAT(first_name, ' ', last_name) AS Full_Name
FROM employees;


-- ===========================================
-- SUBSTRING()
-- ===========================================

-- Query 5 - Display First Three Characters of Product Name

SELECT
product_name,
SUBSTRING(product_name,1,3) AS Short_Name
FROM products;


-- ===========================================
-- REPLACE()
-- ===========================================

-- Query 6 - Replace 'Laptop' with 'Notebook'

SELECT
REPLACE(product_name,'Laptop','Notebook') AS Updated_Product
FROM products;


-- ===========================================
-- TRIM()
-- ===========================================

-- Query 7 - Remove Extra Spaces

SELECT
TRIM('   SQL Learning   ') AS Trimmed_Text;


-- ===========================================
-- CURRENT_DATE
-- ===========================================

-- Query 8 - Display Current Date

SELECT CURRENT_DATE;

-- ===========================================
-- CURRENT_TIMESTAMP
-- ===========================================


-- Query 9 - Display Current Timestamp

SELECT CURRENT_TIMESTAMP;

-- ===========================================
-- EXTRACT()
-- ===========================================


-- Query 10 - Display Order Year

SELECT
order_id,
EXTRACT(YEAR FROM order_date) AS Order_Year
FROM orders;


-- ===========================================
-- TO_CHAR()
-- ===========================================

-- Query 11 - Display Order Date in DD-MM-YYYY Format

SELECT
order_id,
TO_CHAR(order_date,'DD-MM-YYYY') AS Formatted_Date
FROM orders;


-- ===========================================
-- CAST()
-- ===========================================

-- Query 12 - Convert Salary to Integer

SELECT
first_name,
CAST(salary AS INTEGER) AS Salary
FROM employees;


-- ===========================================
-- COALESCE()
-- ===========================================

-- Query 13 - Replace NULL Salary with Zero

SELECT
first_name,
COALESCE(salary,0) AS Salary
FROM employees;


-- ===========================================
-- NULLIF()
-- ===========================================

-- Query 14 - Return NULL When Salary is 50000

SELECT
first_name,
NULLIF(salary,50000) AS Salary
FROM employees;


-- ===========================================
-- IS NULL
-- ===========================================

-- Query 15 - Display Employees with NULL Email

SELECT *
FROM employees
WHERE email IS NULL;


-- ===========================================
-- IS NOT NULL
-- ===========================================

-- Query 16 - Display Employees with Email

SELECT *
FROM employees
WHERE email IS NOT NULL;


-- ===========================================
-- CASE WHEN
-- ===========================================

-- Query 17 - Classify Employees Based on Salary

SELECT
first_name,
salary,
CASE
WHEN salary >= 60000 THEN 'High Salary'
WHEN salary >= 50000 THEN 'Medium Salary'
ELSE 'Low Salary'
END AS Salary_Category
FROM employees;
