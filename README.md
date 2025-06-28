
# 🛒 Superstore Sales & Profit Analysis Dashboard / Project 001

This project showcases a full-cycle data analysis using SQL and Power BI, based on the Superstore sales dataset. The analysis involves querying sales data, summarizing key metrics, and visualizing business insights to assist executive decision-making. This project blends business analysis and technical data skills. 

## 📂 Table of Contents
- [About the Project](#about-the-project)
- [Tools Used](#tools-used)
- [Dashboard Preview](#dashboard-preview)
- [Key Insights](#key-insights)
- [Metrics Summary](metrics-summary)
- [Customer Segementation Analysis](#customer-segmentation-analysis)
- [Author](#author)

## 📌 About the Project

This project simulates real-world data analysis for a retail company. It involves:
- Writing SQL queries to analyze sales, profit, and regional trends.
- Creating a Power BI dashboard for visual storytelling.
- Documenting findings and sharing insights on GitHub.

## 🧰 Tools Used

- **SQL** (SSMS)
- **Power BI** (Data visualization)
- **Excel** (Data preparation)
- **GitHub** (Version control & Documentation)

## 📊 Dashboard Preview

This Power BI dashboard highlights:
- Total Sales & Profit by Category/Sub-Category
- Regional Profit Margin Analysis
- Performance color-coded: 🔵 Blue for high values, 🔴 Red for low

## 🧠 Key Insights

- 🔹 The **West** region had the highest total profit.
- 🔸 The **Central** region had higher sales volume but lower profit margins.
- 🔹 **Technology** and **Office Supplies** were top-performing categories.
- 🔵 Blue indicates higher values like sales and profit, 🔴 Red indicates lower performance.

## 🔢 Metrics Summary

- **Total Sales:** $2,297,200.86
- **Total Profit:** $286,397.02
- **Total Quantity Sold:** 37,873 units
- **Profit Margin:** 12%

## Customer Segmentation Analysis 
This project focuses on segmenting customers using the Superstore dataset to uncover key patterns and high-value groups. The aim is to support targeted marketing, improve customer retention, and drive profitability through data-driven insights.


## 🧠 Segmentation Logic

Customers are segmented based on:

- 📈 **Total Sales**: Indicates purchasing power  
- 💰 **Total Profit**: Measures profitability  
- 🔁 **Order Count**: Reflects buying frequency  
- 🌍 **Region & Segment**: Business categorization

## Key Insights
- Top 10% of customers genereate over 40% of total profit.
- High value customers are concentrated in the "Corporate" and "Consumer" segments.
- Profitablity varies significantly by region. The West region has the highest averrage profit per customer. The Central region has many frequent but lower-profit customers.

Using these, we assign each customer a segment label (Platinum for customers with sales greater than or equal to $10000, Gold for customer with sales greater than or equal to $5000, Silver for customers less than or equal to $1000, Else Bronze for customers with no sales) based on performance.

## SQL Queries

SQL was used to:
- Join customer and order data
- Calculate total sales, profit, and order count per customer
- Assign customer tiers using CASE statements

## Business Impact

**Customer segmentation helps businesses:**

- Target high-value customers for retention and loyalty campaigns.
- Reduce costs by deprioritizing unprofitable customer segments
- Develop tailored marketing strategies per segment


## 👨‍💻 Author

**Ralph Boadi**  
Aspiring Data Analyst | SQL | Power BI | Business Analytics  
GitHub: [github.com/ralphboadi](https://github.com/ralphboadi)  
LinkedIn: [linkedin.com/in/ralph-boadi](https://linkedin.com/in/ralph-boadi)
