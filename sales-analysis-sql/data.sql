-- Regions
INSERT INTO regions (region_id, region_name) VALUES
(1, 'North'),
(2, 'South'),
(3, 'East'),
(4, 'West');

-- Customers
INSERT INTO customer (customer_id, customer_name, region_id) VALUES
(1, 'Alice', 1),
(2, 'Bob', 2),
(3, 'Charlie', 3),
(4, 'Diana', 4);

-- Products
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 800),
(2, 'Phone', 500),
(3, 'Tablet', 300);

-- Orders
INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-01-15'),
(3, 3, '2024-02-05');

-- Order Items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
(1, 1, 1, 1), -- Alice bought 1 Laptop
(2, 1, 2, 2), -- Alice bought 2  Phones
(3, 2, 3, 1), -- Bob bought 1 Tablet
(4, 3, 2, 1); -- Charlie bought 1 Phone in Feb

