SELECT 
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    ROUND(AVG(Discount), 2) AS Avg_Discount,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 2) AS Profit_Margin
FROM 
    [Sample - Superstore]
GROUP BY 
    Sub_Category
ORDER BY 
    Total_Sales DESC;