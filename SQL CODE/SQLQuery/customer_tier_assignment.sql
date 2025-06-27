
-- Step 2: Assign Customer Tiers
SELECT *,
    CASE 
        WHEN Total_Sales >= 10000 THEN 'Platinum'
        WHEN Total_Sales >= 5000 THEN 'Gold'
        WHEN Total_Sales >= 1000 THEN 'Silver'
        ELSE 'Bronze'
    END AS Customer_Tier
FROM (
    SELECT 
        Customer_ID,
        Customer_Name,
        Segment,
        Region,
        SUM(Sales) AS Total_Sales,
        SUM(Profit) AS Total_Profit,
        COUNT(DISTINCT Order_ID) AS Order_Count
    FROM [Sample - Superstore]
    GROUP BY Customer_ID, Customer_Name, Segment, Region
) AS Customer_Agg;
