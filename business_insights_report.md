# E-commerce Business Performance Analysis
## Business Insights Report

### 1. Project Overview

This project analyses e-commerce business performance using SQL and MySQL Workbench. The objective is to understand revenue trends, customer purchasing behaviour, order performance and product sales.

The analysis uses four relational tables:

- Customers
- Orders
- Order Items
- Products

### 2. Key Business Metrics

| Metric | Result |
|---|---:|
| Total registered customers | 10 |
| Customers who placed orders | 10 |
| Repeat customers | 4 |
| Repeat customer rate | 40.00% |
| Total orders | 15 |
| Delivered orders | 11 |
| Delivery completion rate | 73.33% |
| Products analysed | 10 |
| Units sold | 32 |
| Delivered-order revenue | ₹33,468 |

### 3. Revenue Analysis

A month-over-month revenue analysis was performed using SQL Common Table Expressions (CTEs) and the `LAG()` window function.

- The analysis covered January to May 2025.
- January 2025 revenue was ₹4,994.
- Month-over-month revenue growth was calculated by comparing each month's revenue with the previous month.
- January's growth value was NULL because there was no preceding month in the analysis period.

### 4. Customer Analysis

#### Repeat Customer Analysis

The analysis identified 4 repeat customers.

Key findings:
- 10 customers placed at least one order.
- 4 customers placed multiple orders.
- The repeat customer rate was 40%.

#### Customer Revenue Contribution

Customer revenue was calculated using delivered orders.

Key findings:
- Meera Iyer was the highest revenue-generating customer, contributing ₹4,996.
- Vikram Singh was the lowest revenue-generating customer among customers with delivered orders, contributing ₹2,297.
- 8 customers had delivered orders.

### 5. Order and Delivery Performance

The order status analysis returned the following results:

| Metric | Result |
|---|---:|
| Total orders | 15 |
| Delivered orders | 11 |
| Cancelled orders | 2 |
| Delivery completion rate | 73.33% |

The remaining 2 orders were recorded under other statuses.

The delivery completion rate represents the percentage of all orders marked as delivered. It does not measure delivery speed or whether orders arrived on time.

### 6. Product Performance Analysis

The analysis covered 10 products across 5 categories.

#### Category-wise Performance

| Category | Products | Units Sold | Revenue | Revenue Contribution |
|---|---:|---:|---:|---:|
| Accessories | 3 | 10 | ₹9,990 | 29.85% |
| Electronics | 2 | 7 | ₹9,193 | 27.47% |
| Fashion | 2 | 5 | ₹5,295 | 15.82% |
| Home Appliances | 2 | 2 | ₹4,998 | 14.93% |
| Lifestyle | 1 | 8 | ₹3,992 | 11.93% |
| **Total** | **10** | **32** | **₹33,468** | **100%** |

#### Key Product Insights

1. Accessories was the highest revenue-generating category, contributing 29.85% of total revenue.
2. Electronics was the second-largest category, contributing 27.47%.
3. Accessories and Electronics together contributed 57.32% of total revenue.
4. Lifestyle recorded the highest category-level sales volume, with 8 units sold.
5. Home Appliances generated ₹4,998 from 2 units sold, indicating relatively high revenue per unit.

### 7. Business Recommendations

Based on the analysis, the following actions are recommended:

1. **Improve customer retention:** Explore loyalty programmes, personalised offers and repeat-purchase campaigns to encourage customers to order again.
2. **Focus on high-performing categories:** Monitor inventory and demand for Accessories and Electronics, which together contribute 57.32% of revenue.
3. **Increase order completion:** Investigate cancelled and other non-delivered orders to identify potential operational issues.
4. **Explore Lifestyle growth opportunities:** Evaluate pricing, product bundling and cross-selling strategies to improve revenue.
5. **Review product performance:** Monitor revenue and units sold at individual product level to identify high-performing and underperforming products.

### 8. Conclusion

This SQL project demonstrates how relational data can be used to analyse e-commerce business performance.

The analysis covers revenue trends, repeat customer behaviour, customer revenue contribution, order completion and product performance.

The findings highlight opportunities to improve customer retention, strengthen high-performing product categories and investigate non-delivered orders.

The project demonstrates practical SQL skills, including joins, aggregations, Common Table Expressions (CTEs), window functions, subqueries and business-focused data analysis.
