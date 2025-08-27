
# Superstore Sales & Profit Analysis Dashboard

This project delivers a full-cycle business intelligence solution for retail data using SQL, Excel, and Power BI. It highlights the power of data storytelling, executive reporting, and customer-centric strategy development—all grounded in real-world sales data from a fictional Superstore.
    
## Project Overview
- A comprehensive analysis pipeline built to:
    - Explore regional, categorical, and segment-level sales data
    - Identify profitable product lines and customer behaviors
    - Support strategic planning for marketing and inventory

## Tools Used

- **SQL** (SSMS)
- **Power BI** (Data visualization)
- **Excel** (Data preparation)

## Metrics Summary

- **Total Sales:** $2,297,200.86
- **Total Profit:** $286,397.02
- **Total Quantity Sold:** 37,873 units
- **Profit Margin:** 12%

##  Key Business Insights
### Regional Analysis

| Region       | Total Sales   | Total Profit  | Quantity Sold | Profit Margin |
|--------------|---------------|---------------|----------------|----------------|
| West         | $725,457.82   | $108,418.45   | 10,595         | 15%            |
| East         | $678,781.52   | $96,479.79    | 10,037         | 14%            |
| Central      | $501,239.89   | $38,005.41    | 9,319          | 8%             |
| South        | $391,721.63   | $43,493.37    | 7,922          | 11%            |

#### Key Insights

- West region generates the highest sales and profit, with a strong profit margin of 15%
- South has the lowest sales volume, but a relatively healthy 11% margin
- Central lags in profit margin, suggesting inefficiencies or lower-margin product sales

### Product Catergory Analysis (per region)
#### West Region
- Technology leads in both sales and profit, with strong profit margins
- Office Supplies sell well in volume but have lower margins
- Discounts are modest across categories

#### East Region
- Strong performance in **Furniture** and **Technology**
- Office Supplies again show high quantity but moderate margins

#### Central Region
- High volume of Office Supplies, but relatively low profit and profit margin
- May indicate high discounting or low-margin product mix
- Furniture and Technology underperform relative to other regions

#### South Region
- Technology is dominant in sales and margin
- Furniture has relatively higher profit margin than Office Supplies

##  Top Performing Sub-Categories by Sales

| Sub-Category | Sales      | Profit     | Quantity | Profit Margin | Avg Discount |
|--------------|------------|------------|----------|----------------|---------------|
| Phones       | $330,007   | $44,516    | 3,289    | 0.13           | 0.15          |
| Chairs       | $328,449   | $26,590    | 2,356    | 0.08           | 0.17          |
| Storage      | $223,844   | $21,279    | 3,158    | 0.10           | 0.07          |
| Tables       | $206,966   | -$17,725   | 1,241    | -0.09          | 0.26          |
| Binders      | $203,413   | $30,222    | 5,974    | 0.15           | 0.37          |

#### Insights

- Phones lead in total sales and generate solid profits
- Copiers have the highest profit margin (0.37) despite fewer sales — a premium segment
- Tables and Bookcases report negative profit, likely due to deep discounting or high cost structure
- Binders and Chairs sell in high volume but operate on thinner margins

---

## Customer Segmentation Analysis 
### Segmenting based on: 
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


#### Key Insights
- Top 10% of customers genereate over 40% of total profit
- Corporate and Consumer segments dominate top-tier profitability
- Profitablity varies significantly by region. West region customers show highest average profit per person
- The Central region has many frequent but lower-profit customers

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
