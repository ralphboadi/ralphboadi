
-- Step 1: Aggregate Customer Metrics
SELECT 
    Customer_ID,
    Customer_Name,
    Segment,
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT Order_ID) AS Order_Count
FROM [Sample - Superstore]
GROUP BY Customer_ID, Customer_Name, Segment, Region;


