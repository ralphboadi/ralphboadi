
-- total_sales_profit_quantity.sql

SELECT 
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Quantity) AS total_quantity,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 2) AS profit_margin
FROM superstore;
