# E-commerce Business Performance Analysis

## Project Overview
This project analyzes e-commerce business performance using SQL and MySQL. The goal is to explore sales, product performance, customer purchasing behaviour, and order cancellations to generate insights that can support business decisions.

## Business Objectives
The analysis aims to answer the following questions:

1. What is the value of each customer order?
2. How does revenue change month over month?
3. Which products generate the highest revenue?
4. Which product categories perform best?
5. Which customers contribute the most revenue?
6. What percentage of orders are cancelled?
7. What is the average order value (AOV)?

## Database Structure
The project uses a relational database named `ecommerce_analysis` with four tables:

- **customers** – Customer details and location.
- **products** – Product names, categories, and prices.
- **orders** – Order dates, customer references, and order statuses.
- **order_items** – Products, quantities, and prices associated with each order.

## Tools & Skills Used
- MySQL
- MySQL Workbench
- SQL joins
- Aggregate functions (`SUM`, `COUNT`, `AVG`)
- `GROUP BY` and `ORDER BY`
- `CASE` statements
- Date functions
- Business data analysis

## Key Findings

Based on the sample dataset:

- **Order cancellation rate:** 13.33%.
- **Average order value:** ₹3,042.55 for delivered orders.
- **Top-performing product:** Bluetooth Headphones, generating ₹5,997 from 3 units sold.
- **Top-performing category:** Accessories, generating ₹9,990.
- **Highest-spending customer:** Meera Iyer, with delivered purchases worth ₹4,996.

## Project Files

| File | Description |
|---|---|
| `01_create_tables.sql` | Creates the database and tables. |
| `02_insert_sample_data.sql` | Inserts sample customer, product, and order data. |
| `03_business_analysis_queries.sql` | Contains SQL queries used for business analysis. |

## Project Outcome
This project demonstrates how SQL can be used to transform structured e-commerce data into meaningful business insights. It showcases practical analytical skills relevant to Business Analyst and Data Analyst roles.

---

*This is a portfolio project built using sample data for learning and demonstration purposes.*
