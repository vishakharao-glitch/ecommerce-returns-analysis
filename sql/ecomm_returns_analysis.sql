-- Executive Summary: Total Sales, Profit, and Return Rate
SELECT 
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit,
    ROUND(AVG(CASE WHEN "Returned" THEN 1 ELSE 0 END)::numeric * 100, 2) AS return_rate_percent
FROM orders;

-- Profit by Category
SELECT 
    "Category",
    ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM orders
GROUP BY "Category"
ORDER BY total_profit DESC;

-- Sales by Region
SELECT 
    "Region",
    ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM orders
GROUP BY "Region"
ORDER BY total_sales DESC;

-- Return Rate by Segment
SELECT 
    "Segment",
    COUNT(*) AS total_orders,
    SUM(CASE WHEN "Returned" THEN 1 ELSE 0 END) AS returned_orders,
    ROUND(SUM(CASE WHEN "Returned" THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) AS return_rate_percent
FROM orders
GROUP BY "Segment";

-- Average Shipping Duration
SELECT 
    ROUND(AVG("Shipping Duration")::numeric, 2) AS avg_shipping_days
FROM orders;

-- Monthly Sales & Profit Trend
SELECT 
    DATE_TRUNC('month', "Order Date"::date) AS month,
    ROUND(SUM("Sales")::numeric, 2) AS monthly_sales,
    ROUND(SUM("Profit")::numeric, 2) AS monthly_profit
FROM orders
GROUP BY month
ORDER BY month;

-- Discount Impact on Profit
SELECT 
    ROUND("Discount"::numeric, 2) AS discount_level,
    ROUND(AVG("Profit")::numeric, 2) AS avg_profit
FROM orders
GROUP BY discount_level
ORDER BY discount_level;

-- Top 10 Products by Profit
SELECT 
    "Product Name",
    ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM orders
GROUP BY "Product Name"
ORDER BY total_profit DESC
LIMIT 10;