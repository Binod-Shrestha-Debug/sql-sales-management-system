-- Basic SQL practice and CRUD examples

-- 1. Display all customers.
SELECT * FROM customers ORDER BY customer_id;

-- 2. Find customers from Kathmandu.
SELECT customer_name, city
FROM customers
WHERE city = 'Kathmandu';

-- 3. Find products costing more than Rs. 5,000.
SELECT product_name, price
FROM products
WHERE price > 5000
ORDER BY price DESC;

-- 4. Find products with stock below 15.
SELECT product_name, stock
FROM products
WHERE stock < 15
ORDER BY stock;

-- 5. Search product names.
SELECT product_name
FROM products
WHERE product_name ILIKE '%laptop%';

-- 6. Show distinct product categories.
SELECT DISTINCT category
FROM products
ORDER BY category;

-- 7. Count customers and products.
SELECT COUNT(*) AS customer_count FROM customers;
SELECT COUNT(*) AS product_count FROM products;

-- 8. Example UPDATE. Uncomment to execute.
-- UPDATE products SET price = 82000 WHERE product_id = 1;

-- 9. Example INSERT. Uncomment and adjust email if needed.
-- INSERT INTO customers (customer_name, city, email)
-- VALUES ('Test Customer', 'Kathmandu', 'test.customer@example.com');

-- 10. Example DELETE. Only delete a row you intentionally added.
-- DELETE FROM customers WHERE email = 'test.customer@example.com';
