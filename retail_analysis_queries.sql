-- Create Database
CREATE DATABASE retail_analysis;
USE retail_analysis;

-- Total Revenue
SELECT SUM(Sales) AS total_revenue
FROM superstore;

-- Revenue by Region
SELECT Region, SUM(Sales) AS revenue
FROM superstore
GROUP BY Region
ORDER BY revenue DESC;

-- Monthly Sales Trend
SELECT MONTH(Order_Date) AS month,
       SUM(Sales) AS monthly_sales
FROM superstore
GROUP BY MONTH(Order_Date)
ORDER BY month;

-- Top 5 Sub-Categories
SELECT Sub_Category,
       SUM(Sales) AS total_sales
FROM superstore
GROUP BY Sub_Category
ORDER BY total_sales DESC
LIMIT 5;

-- Profit by Category
SELECT Category,
       SUM(Profit) AS total_profit
FROM superstore
GROUP BY Category
ORDER BY total_profit DESC;
