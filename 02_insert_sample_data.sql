
USE ecommerce_analysis;

-- 1. Insert customers
INSERT INTO customers
(first_name, last_name, email, city, state, signup_date)
VALUES
('Aarav', 'Sharma', 'aarav.sharma@example.com', 'Hyderabad', 'Telangana', '2025-01-10'),
('Priya', 'Reddy', 'priya.reddy@example.com', 'Bengaluru', 'Karnataka', '2025-01-15'),
('Rahul', 'Verma', 'rahul.verma@example.com', 'Mumbai', 'Maharashtra', '2025-02-01'),
('Sneha', 'Patel', 'sneha.patel@example.com', 'Ahmedabad', 'Gujarat', '2025-02-10'),
('Arjun', 'Nair', 'arjun.nair@example.com', 'Kochi', 'Kerala', '2025-02-18'),
('Ananya', 'Das', 'ananya.das@example.com', 'Kolkata', 'West Bengal', '2025-03-05'),
('Vikram', 'Singh', 'vikram.singh@example.com', 'Delhi', 'Delhi', '2025-03-12'),
('Meera', 'Iyer', 'meera.iyer@example.com', 'Chennai', 'Tamil Nadu', '2025-04-02'),
('Karan', 'Mehta', 'karan.mehta@example.com', 'Pune', 'Maharashtra', '2025-04-15'),
('Pooja', 'Gupta', 'pooja.gupta@example.com', 'Jaipur', 'Rajasthan', '2025-05-01');

-- 2. Insert products
INSERT INTO products
(product_name, category, price)
VALUES
('Wireless Mouse', 'Electronics', 799.00),
('Bluetooth Headphones', 'Electronics', 1999.00),
('Laptop Stand', 'Accessories', 1299.00),
('USB-C Cable', 'Accessories', 399.00),
('Running Shoes', 'Fashion', 2499.00),
('Cotton T-Shirt', 'Fashion', 699.00),
('Coffee Maker', 'Home Appliances', 3499.00),
('Water Bottle', 'Lifestyle', 499.00),
('Desk Lamp', 'Home Appliances', 1499.00),
('Backpack', 'Accessories', 1799.00);

-- 3. Insert orders
INSERT INTO orders
(customer_id, order_date, status)
VALUES
(1, '2025-01-20', 'Delivered'),
(2, '2025-01-25', 'Delivered'),
(3, '2025-02-05', 'Delivered'),
(1, '2025-02-14', 'Delivered'),
(4, '2025-02-20', 'Cancelled'),
(5, '2025-03-02', 'Delivered'),
(6, '2025-03-10', 'Delivered'),
(2, '2025-03-18', 'Shipped'),
(7, '2025-04-05', 'Delivered'),
(8, '2025-04-12', 'Delivered'),
(3, '2025-04-20', 'Cancelled'),
(9, '2025-05-03', 'Delivered'),
(10, '2025-05-10', 'Processing'),
(5, '2025-05-15', 'Delivered'),
(1, '2025-05-22', 'Delivered');

-- 4. Insert order items
INSERT INTO order_items
(order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 2, 799.00),
(1, 4, 1, 399.00),
(2, 2, 1, 1999.00),
(2, 8, 2, 499.00),
(3, 5, 1, 2499.00),
(3, 6, 2, 699.00),
(4, 3, 1, 1299.00),
(4, 4, 2, 399.00),
(5, 7, 1, 3499.00),
(6, 10, 1, 1799.00),
(6, 8, 2, 499.00),
(7, 2, 2, 1999.00),
(7, 1, 1, 799.00),
(8, 6, 3, 699.00),
(9, 9, 1, 1499.00),
(9, 4, 2, 399.00),
(10, 7, 1, 3499.00),
(10, 8, 3, 499.00),
(11, 5, 1, 2499.00),
(12, 10, 2, 1799.00),
(12, 3, 1, 1299.00),
(13, 2, 1, 1999.00),
(14, 6, 2, 699.00),
(14, 8, 1, 499.00),
(15, 1, 1, 799.00);
