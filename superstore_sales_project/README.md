
# Superstore Sales & Profit Analysis Dashboard

This project delivers a full-cycle business intelligence solution for retail data using SQL, Excel, and Power BI. It highlights the power of data storytelling, executive reporting, and customer-centric strategy development—all grounded in real-world sales data from a fictional Superstore.
    
## Project Overview
- A comprehensive analysis pipeline built to:
    - Explore regional, categorical, and segment-level sales data.
    - Identify profitable product lines and customer behaviors.
    - Support strategic planning for marketing and inventory.

## Tools Used

- **SQL** (SSMS)
- **Power BI** (Data visualization)
- **Excel** (Data preparation)
- **GitHub** (Version control & Documentation)

## Metrics Summary

- **Total Sales:** $2,297,200.86
- **Total Profit:** $286,397.02
- **Total Quantity Sold:** 37,873 units
- **Profit Margin:** 12%

##  Key Business Insights
# Regional Analysis
| Region           | Highlights |
|---------------------|--------------------------|
| West         | Highest profit and strong margins across categories |
| East         | Balanced sales in furniture and technology |
| Central      | High Sales volume, low margin, possible over discounting |
|South         |Technology dominates profits share |

## Product Catergory Analysis
- **Technology:** High margin, top performing across all regions
- **Office Supplies:** Strong sales volume, weaker margins
- **Furniture:** Solid Performance in East and South, underwhelming in Central

---

## Customer Segmentation Analysis 
# Segmenting based on: 
- Sales & Profit
- Order Frequency
- Region & Segment 

## Segmentation Tiers 
| segment label          | Sales Threshold  |
|---------------------|--------------------------|
|Plantinum         |   ≥ $10,000 |
| Gold       | ≥ $5,000 |
| Silver     | ≥ $1,000|
| Bronze     | < $1,000 |
| Red         | $0      |


## Key Insights
- Top 10% of customers genereate over 40% of total profit.
- Corporate and Consumer segments dominate top-tier profitability
- Profitablity varies significantly by region. West region customers show highest average profit per person.
- The Central region has many frequent but lower-profit customers.

## SQL Highlights
- Joined datasets to enrich customer and order info
- Aggregated sales and profit using GROUP BY
- Created tiered segments with CASE statements for classification

## Business Impact
- Prioritize high-value customers in retention campaigns
- Adjust discounting strategies to improve Central region margins
- Optimize inventory for high-margin categories

## Outcome

A data-driven foundation for smarter marketing, customer retention, and inventory planning—visualized through a sleek Power BI dashboard
