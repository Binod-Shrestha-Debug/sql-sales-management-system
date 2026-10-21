-- Run after creating the tables.
-- This seed script is intended for a fresh project database.

INSERT INTO customers (customer_id, customer_name, city, email, created_at) VALUES
(1, 'Ram Sharma', 'Kathmandu', 'ram.sharma@example.com', '2026-01-05'),
(2, 'Sita Thapa', 'Pokhara', 'sita.thapa@example.com', '2026-01-10'),
(3, 'Hari Karki', 'Lalitpur', 'hari.karki@example.com', '2026-01-15'),
(4, 'Mina Gurung', 'Bhaktapur', 'mina.gurung@example.com', '2026-02-02'),
(5, 'Aarav Rai', 'Biratnagar', 'aarav.rai@example.com', '2026-02-10'),
(6, 'Nisha Adhikari', 'Chitwan', 'nisha.adhikari@example.com', '2026-02-18'),
(7, 'Bikash KC', 'Butwal', 'bikash.kc@example.com', '2026-03-01'),
(8, 'Anu Magar', 'Dharan', 'anu.magar@example.com', '2026-03-12');

INSERT INTO products (product_id, product_name, category, price, stock) VALUES
(1, 'Laptop', 'Electronics', 80000.00, 10),
(2, 'Wireless Mouse', 'Accessories', 1500.00, 50),
(3, 'Mechanical Keyboard', 'Accessories', 4500.00, 25),
(4, 'Monitor', 'Electronics', 25000.00, 12),
(5, 'USB-C Hub', 'Accessories', 3500.00, 40),
(6, 'Headphones', 'Audio', 6000.00, 20),
(7, 'Webcam', 'Electronics', 4000.00, 18),
(8, 'Laptop Stand', 'Accessories', 2200.00, 30),
(9, 'External SSD', 'Storage', 12000.00, 15),
(10, 'Desk Lamp', 'Office', 1800.00, 22),
(11, 'Microphone', 'Audio', 7500.00, 8);

INSERT INTO orders (order_id, customer_id, order_date, status) VALUES
(1, 1, '2026-01-20', 'Completed'),
(2, 2, '2026-01-22', 'Completed'),
(3, 1, '2026-02-03', 'Completed'),
(4, 3, '2026-02-10', 'Shipped'),
(5, 4, '2026-02-15', 'Completed'),
(6, 5, '2026-02-20', 'Pending'),
(7, 2, '2026-03-02', 'Completed'),
(8, 6, '2026-03-05', 'Cancelled'),
(9, 7, '2026-03-10', 'Completed'),
(10, 3, '2026-03-18', 'Completed'),
(11, 8, '2026-04-01', 'Pending'),
(12, 5, '2026-04-05', 'Completed');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 80000.00),
(1, 2, 2, 1500.00),
(2, 3, 1, 4500.00),
(2, 6, 1, 6000.00),
(3, 2, 3, 1500.00),
(3, 5, 1, 3500.00),
(4, 4, 1, 25000.00),
(4, 8, 2, 2200.00),
(5, 6, 2, 6000.00),
(5, 10, 1, 1800.00),
(6, 9, 1, 12000.00),
(7, 3, 1, 4500.00),
(7, 2, 1, 1500.00),
(8, 7, 1, 4000.00),
(9, 1, 1, 80000.00),
(9, 5, 2, 3500.00),
(10, 4, 2, 25000.00),
(10, 7, 1, 4000.00),
(11, 11, 1, 7500.00),
(11, 6, 1, 6000.00),
(12, 9, 2, 12000.00),
(12, 10, 2, 1800.00);

-- Reset identity sequences so future generated IDs continue after seed IDs.
SELECT setval(pg_get_serial_sequence('customers', 'customer_id'),
              (SELECT MAX(customer_id) FROM customers));
SELECT setval(pg_get_serial_sequence('products', 'product_id'),
              (SELECT MAX(product_id) FROM products));
SELECT setval(pg_get_serial_sequence('orders', 'order_id'),
              (SELECT MAX(order_id) FROM orders));
