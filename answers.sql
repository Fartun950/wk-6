-- ===========================================
-- Assignment: Joins and Relationships
-- File: answers.sql
-- ===========================================

-- Question 1 🧑‍💼
-- Get the firstName, lastName, email, and officeCode of all employees.
-- Use INNER JOIN to combine employees and offices tables.

SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o ON e.officeCode = o.officeCode;

-- -------------------------------------------

-- Question 2 🛍️
-- Get productName, productVendor, and productLine from products table.
-- Use LEFT JOIN with productlines table.

SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl ON p.productLine = pl.productLine;

-- -------------------------------------------

-- Question 3 📦
-- Get orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use RIGHT JOIN between customers and orders tables.

SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o ON c.customerNumber = o.customerNumber
LIMIT 10;

-- ===========================================
-- End of File
-- ===========================================
