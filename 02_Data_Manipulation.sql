-- ===========================================
-- Data Manipulation
-- ===========================================


-- ===========================================
-- INSERT
-- ===========================================

-- Query 1 - Insert Data into Departments

INSERT INTO departments (department_name, location)
VALUES
('HR', 'Mumbai'),
('Finance', 'Pune'),
('Sales', 'Bangalore'),
('IT', 'Hyderabad'),
('Marketing', 'Delhi');


-- Query 2 - Insert Data into Employees

INSERT INTO employees
(first_name, last_name, email, hire_date, salary, department_id)
VALUES
('Rahul', 'Sharma', 'rahul.sharma@email.com', '2023-01-10', 45000.00, 1),
('Priya', 'Patil', 'priya.patil@email.com', '2022-08-15', 55000.00, 2),
('Amit', 'Verma', 'amit.verma@email.com', '2021-05-20', 60000.00, 3),
('Sneha', 'Joshi', 'sneha.joshi@email.com', '2024-02-01', 48000.00, 1),
('Rohan', 'Mehta', 'rohan.mehta@email.com', '2020-11-18', 70000.00, 4),
('Neha', 'Kulkarni', 'neha.k@email.com', '2023-06-12', 52000.00, 5),
('Karan', 'Singh', 'karan.s@email.com', '2022-09-05', 58000.00, 3),
('Pooja', 'Desai', 'pooja.d@email.com', '2021-12-10', 65000.00, 2),
('Vikas', 'Gupta', 'vikas.g@email.com', '2024-01-08', 47000.00, 4),
('Anjali', 'Nair', 'anjali.n@email.com', '2023-03-14', 51000.00, 5);


-- Query 3 - Insert Data into Customers

INSERT INTO customers
(customer_name, email, city, country)
VALUES
('ABC Pvt Ltd', 'abc@email.com', 'Mumbai', 'India'),
('XYZ Traders', 'xyz@email.com', 'Pune', 'India'),
('Prime Solutions', 'prime@email.com', 'Delhi', 'India'),
('Global Tech', 'global@email.com', 'Hyderabad', 'India'),
('Sunrise Corp', 'sunrise@email.com', 'Bangalore', 'India'),
('Elite Stores', 'elite@email.com', 'Chennai', 'India'),
('Vision Enterprises', 'vision@email.com', 'Ahmedabad', 'India'),
('Future Mart', 'future@email.com', 'Kolkata', 'India'),
('Smart Retail', 'smart@email.com', 'Nagpur', 'India'),
('Infinity Services', 'infinity@email.com', 'Jaipur', 'India');


-- Query 4 - Insert Data into Products

INSERT INTO products
(product_name, category, price)
VALUES
('Laptop', 'Electronics', 65000.00),
('Mouse', 'Electronics', 800.00),
('Keyboard', 'Electronics', 1500.00),
('Office Chair', 'Furniture', 5500.00),
('Desk', 'Furniture', 7000.00),
('Printer', 'Electronics', 12000.00),
('Notebook', 'Stationery', 120.00),
('Pen', 'Stationery', 25.00),
('Monitor', 'Electronics', 15000.00),
('Headphones', 'Electronics', 2500.00);


-- Query 5 - Insert Data into Orders

INSERT INTO orders
(customer_id, order_date)
VALUES
(1, '2025-01-10'),
(2, '2025-01-12'),
(3, '2025-01-15'),
(4, '2025-01-18'),
(5, '2025-01-20'),
(6, '2025-01-22'),
(7, '2025-01-25'),
(8, '2025-01-28'),
(9, '2025-02-01'),
(10, '2025-02-03'),
(1, '2025-02-05'),
(3, '2025-02-08'),
(5, '2025-02-10'),
(7, '2025-02-12'),
(9, '2025-02-15');


-- Query 6 - Insert Data into Sales

INSERT INTO sales
(order_id, product_id, quantity, total_amount)
VALUES
(1, 1, 1, 65000.00),
(2, 2, 2, 1600.00),
(3, 3, 1, 1500.00),
(4, 4, 1, 5500.00),
(5, 5, 1, 7000.00),
(6, 6, 1, 12000.00),
(7, 7, 5, 600.00),
(8, 8, 10, 250.00),
(9, 9, 2, 30000.00),
(10, 10, 2, 5000.00),
(11, 1, 1, 65000.00),
(12, 3, 2, 3000.00),
(13, 5, 1, 7000.00),
(14, 9, 1, 15000.00),
(15, 2, 3, 2400.00);


-- ===========================================
-- UPDATE
-- ===========================================

-- Query 7 - Update Employee Salary

UPDATE employees
SET salary = 50000
WHERE employee_id = 1;


-- Query 8 - Update Employee Department

UPDATE employees
SET department_id = 2
WHERE employee_id = 4;


-- Query 9 - Update Customer City

UPDATE customers
SET city = 'Mumbai'
WHERE customer_id = 10;


-- ===========================================
-- DELETE
-- ===========================================

-- Query 10 - Delete One Sale Record

DELETE FROM sales
WHERE sale_id = 15;


-- Query 11 - Delete Customer from Jaipur

DELETE FROM customers
WHERE city = 'Jaipur';


-- Query 12 - Delete Employee

DELETE FROM employees
WHERE employee_id = 10;
