-- Portfolio business questions
-- Try answering these yourself before reading the hints below.

-- Q1. Which five products generate the most completed-order revenue?
-- Hint: join products, order_items, and orders; filter status = 'Completed';
-- group by product; sort revenue descending; limit 5.

-- Q2. Which customers have not placed any orders?
-- Hint: LEFT JOIN customers to orders and filter order_id IS NULL.

-- Q3. What is the average value of completed orders?
-- Hint: first calculate each order's total, then average those totals.

-- Q4. Which product categories generate the most completed revenue?
-- Hint: group completed line totals by category.

-- Q5. How many orders are pending, completed, shipped, or cancelled?
-- Hint: GROUP BY status.

-- Q6. Which products have stock below 10?
-- Hint: WHERE stock < 10.

-- Q7. Which customers spent the most on completed orders?
-- Hint: group by customer and sort total spending descending.

-- Q8. What is monthly completed revenue?
-- Hint: DATE_TRUNC('month', order_date).

-- Q9. Rank products by completed revenue.
-- Hint: DENSE_RANK() OVER (ORDER BY revenue DESC).

-- Q10. Which products have never appeared in an order?
-- Hint: LEFT JOIN order_items and filter for a missing matching product_id.
