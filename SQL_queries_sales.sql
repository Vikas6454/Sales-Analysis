
-- Sales Analysis SQL Queries

-- 1. Total revenue by region
SELECT Region, SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY Region;

-- 2. Most sold product
SELECT Product, SUM(Units_Sold) AS Total_Units
FROM sales_data
GROUP BY Product
ORDER BY Total_Units DESC;

-- 3. Monthly sales revenue trend
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(Revenue) AS Monthly_Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;

-- 4. Average order value
SELECT AVG(Revenue) AS Avg_Order_Value
FROM sales_data;

-- 5. Top 5 high-value orders
SELECT Order_ID, Product, Revenue
FROM sales_data
ORDER BY Revenue DESC
LIMIT 5;
