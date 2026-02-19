# Sports Footwear Sales Analysis Dashboard

## Project Overview
This project analyzes sports footwear sales data to uncover insights into revenue trends, pricing strategy, brand performance, sales channels, and customer behavior.

Raw transactional data was cleaned using PostgreSQL views and visualized in Power BI to support business decision-making.

---

## Dataset
- Time Period: 2023–2024 (partial)
- Records: ~5,200 transactions

### Dimensions
- Brand
- Product Category
- Sales Channel
- Country
- Customer Gender
- Loyalty Member

### Metrics
- Revenue
- Quantity Sold
- Average Order Value (AOV)
- Average Unit Price

---

## Tools Used
- PostgreSQL
- SQL (Views & Data Cleaning)
- Power BI
- DAX
- Git & GitHub

---

## Key Insights

### Revenue Performance
- Total Revenue: $559.6K
- Revenue trends show seasonal variation.

### Brand Strategy
- New Balance generates higher revenue due to premium pricing.
- Reebok drives higher volume at lower price points.
- Revenue per transaction remains consistent (~$108 across brands)

### Channel Performance
- Web & Online channels generate the highest total revenue.
- Online channels show higher AOV (~$113) vs in-store (~$102).

### Loyalty Impact
- Loyalty members contribute ~41% of revenue.
- Revenue distribution across gender segments is balanced.
Insight: Retention strategies positively influence revenue stability.

---

## Dashboard Features
- KPI Summary
- Revenue Trend Analysis
- Brand Performance
- Channel Comparison& AOV Analysis
- Loyalty Contribution

---

## Strategic Recommendations

- Adopt brand-specific pricing strategies rather than uniform discounting.
- Protect premium pricing for high-performing brands.
- Use targeted promotions during seasonal slowdowns.
- Prioritize digital channels to maximize high-value transactions.


---

## Repository Structure
sports-footwear-sales-analysis
│
├── sql/
│   └── create_cleaned_views.sql
├── data/
│   └── cleaned/
│       └── cleaned_sport_sales.csv
├── powerbi/
│   └── sports_footwear_sales_dashboard.pbix
├── docs/
│   └── screenshots/
└── README.md


## Project Outcome

This project demonstrates:

- End-to-end data analysis workflow
- SQL-based data cleaning using non-destructive views
- DAX measure development for business KPIs
- Data modeling and visualization in Power BI
- Translation of raw data into actionable business insights
- Executive-level dashboard storytelling


---

*Thank you for reviewing this project.*




