-- ===========================================
-- Database Operations
-- ===========================================


-- ===========================================
-- ALTER TABLE
-- ===========================================

-- Query 1 - Add a New Column

ALTER TABLE customers
ADD COLUMN phone VARCHAR(15);


-- Query 2 - Rename a Column

ALTER TABLE customers
RENAME COLUMN phone TO mobile_number;


-- Query 3 - Change Column Data Type

ALTER TABLE customers
ALTER COLUMN mobile_number TYPE VARCHAR(20);


-- Query 4 - Drop a Column

ALTER TABLE customers
DROP COLUMN mobile_number;


-- ===========================================
-- TRUNCATE TABLE
-- ===========================================

-- Query 5 - Remove All Data from Sales Table

TRUNCATE TABLE sales;


-- Query 6 - Remove All Data and Reset Identity

TRUNCATE TABLE sales
RESTART IDENTITY;


-- ===========================================
-- DROP TABLE
-- ===========================================

-- Query 7 - Drop Products Table

DROP TABLE products;


-- Query 8 - Drop Products Table If Exists

DROP TABLE IF EXISTS products;


-- ===========================================
-- DROP DATABASE
-- ===========================================

-- Query 9 - Drop Company Database

DROP DATABASE company_db;
