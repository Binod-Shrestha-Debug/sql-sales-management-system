# SQL Sales Management System

**Created by Binod Shrestha**

A beginner-to-intermediate relational database and sales analytics project built using PostgreSQL 18. This project demonstrates how SQL can be used to manage sales data, maintain relationships between tables, and generate useful business insights.

## Project Objectives

- Manage customers, products, orders, and order items.
- Understand primary keys, foreign keys, constraints, and indexes.
- Retrieve and analyze sales data using SQL queries.
- Practice joins, aggregate functions, subqueries, CTEs, window functions, and views.
- Generate reports to support business decision-making.

## Database Design

The project contains four main tables:

- **Customers:** Stores customer information, including names, email addresses, and cities.
- **Products:** Stores product names, categories, prices, and available stock.
- **Orders:** Records customer orders, order dates, and order statuses.
- **Order_Items:** Connects orders and products while storing quantities and prices at the time of purchase.

The database uses primary and foreign keys to maintain relationships and data integrity. One customer can place multiple orders, and each order can contain multiple products.

## Technologies Used

- PostgreSQL 18
- SQL
- pgAdmin
- Git and GitHub

## Project Setup

1. Create a database named `sales_management` in pgAdmin.
2. Connect to the newly created database.
3. Execute the SQL files in the following order:

   - `01_create_database_and_tables.sql`
   - `02_insert_sample_data.sql`
   - `03_basic_queries.sql`
   - `04_joins_and_aggregations.sql`
   - `05_advanced_analysis.sql`

4. Use `06_business_questions.sql` to practice solving real-world business problems.

**Note:** Run the setup and sample-data scripts once on a fresh database to avoid duplicate records or conflicting IDs.

## Key Features

- Relational database design with primary and foreign keys.
- Customer and product management.
- Order tracking and sales analysis.
- Revenue reports by product, category, customer, and month.
- Identification of top-performing products and customers.
- Advanced SQL analysis using CTEs, subqueries, and window functions.
- Reusable views and key performance indicator (KPI) reports.

## Business Rules

- Completed revenue is calculated by multiplying each item's quantity by its unit price and summing the results for completed orders.
- Pending, shipped, and cancelled orders are excluded from completed-revenue reports.
- Historical item prices are stored separately from current product prices.
- Product stock is maintained as sample inventory data and is not automatically updated when orders are placed.

## What I Learned

Through this project, I practiced designing relational databases, writing SQL queries, connecting tables using joins, calculating sales metrics, and analyzing business data. I also gained experience using advanced SQL techniques to answer practical business questions.

## About Me

Hi, I'm **Binod Shrestha**, an aspiring data analytics professional interested in SQL, Python, data analysis, and business intelligence. I enjoy working on practical projects that help me strengthen my technical skills and solve real-world problems.

## GitHub Repository

Repository name: `sql-sales-management-system`

This project is part of my ongoing journey to develop practical SQL and data analytics skills.
