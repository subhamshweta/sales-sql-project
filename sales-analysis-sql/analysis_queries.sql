-- Total Revenue
SELECT SUM(p.price * oi.quantity) AS total_revenue
FROM products AS p
JOIN order_items AS oi ON p.product_id = oi.product_id;

-- Revenue Per Month
SELECT
    DATE_FORMAT(o.order_date, '%Y-%m') AS Month,
    SUM(p.price * oi.quantity) AS Revenue
FROM orders AS o
JOIN order_items AS oi ON o.order_id = oi.order_id
JOIN products AS p ON oi.product_id = p.product_id
GROUP BY Month
ORDER BY Month;

-- Top Customers based on Money Spent
SELECT
    c.customer_name, r.region_name,
    SUM(p.price * oi.quantity) AS total_spent
FROM customer AS c
JOIN orders AS o ON o.customer_id = c.customer_id
JOIN order_items AS oi ON o.order_id = oi.order_id
JOIN products AS P ON oi.product_id = p.product_id
JOIN regions AS r ON r.region_id = c.region_id
GROUP BY c.customer_name, r.region_name
ORDER BY total_spent DESC;
