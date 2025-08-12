
CREATE DATABASE Sales;


USE Sales;


CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);


INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-05', 250.00, 101),
(2, '2024-01-15', 120.00, 102),
(3, '2024-02-02', 320.00, 103),
(4, '2024-02-25', 150.00, 101),
(5, '2024-03-12', 450.00, 104),
(6, '2024-03-18', 200.00, 102),
(7, '2024-04-07', 300.00, 105),
(8, '2024-04-20', 180.00, 106),
(9, '2024-05-05', 500.00, 104),
(10, '2024-05-22', 350.00, 103);


SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;




