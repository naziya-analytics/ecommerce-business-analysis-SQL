
USE ecommerce_analysis;

-- =====================================================
-- E-COMMERCE BUSINESS PERFORMANCE ANALYSIS
-- SQL Portfolio Project
-- =====================================================


-- 1. ORDER VALUE ANALYSIS
-- Business question: What is the value of each order?

SELECT
    o.order_id,
    o.order_date,
    o.status,
    SUM(oi.quantity * oi.unit_price) AS order_value
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY
    o.order_id,
    o.order_date,
    o.status
ORDER BY order_value DESC;


-- 2. MONTHLY REVENUE ANALYSIS
-- Business question: How much revenue was generated each month?
-- Only delivered orders are included.

SELECT
    DATE_FORMAT(o.order_date, '%M %Y') AS order_month,
    SUM(oi.quantity * oi.unit_price) AS monthly_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.status = 'Delivered'
GROUP BY
    YEAR(o.order_date),
    MONTH(o.order_date),
    DATE_FORMAT(o.order_date, '%M %Y')
ORDER BY
    YEAR(o.order_date),
    MONTH(o.order_date);


-- 3. PRODUCT PERFORMANCE ANALYSIS
-- Business question: Which products generate the most revenue?

SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.status = 'Delivered'
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY total_revenue DESC;


-- 4. CATEGORY REVENUE ANALYSIS
-- Business question: Which product categories perform best?

SELECT
    p.category,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * oi.unit_price) AS category_revenue
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.status = 'Delivered'
GROUP BY p.category
ORDER BY category_revenue DESC;


-- 5. CUSTOMER PURCHASING BEHAVIOUR
-- Business question: Which customers spend the most?

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.status = 'Delivered'
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
ORDER BY total_spent DESC;


-- 6. ORDER CANCELLATION ANALYSIS
-- Business question: What percentage of orders were cancelled?

SELECT
    COUNT(*) AS total_orders,
    SUM(
        CASE
            WHEN status = 'Cancelled' THEN 1
            ELSE 0
        END
    ) AS cancelled_orders,
    ROUND(
        SUM(
            CASE
                WHEN status = 'Cancelled' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate_percentage
FROM orders;


-- 7. AVERAGE ORDER VALUE (AOV)
-- Business question: What is the average value of a delivered order?

SELECT
    COUNT(DISTINCT o.order_id) AS delivered_orders,
    ROUND(
        SUM(oi.quantity * oi.unit_price)
        / COUNT(DISTINCT o.order_id),
        2
    ) AS average_order_value
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.status = 'Delivered';
