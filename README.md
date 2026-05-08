# Sales Performance Dashboard | SQL + Power BI

## Project Overview

This project is an end-to-end Sales Performance Dashboard built using SQL for data cleaning and transformation, and Power BI for interactive data visualization and business insights generation.


The dashboard provides a comprehensive analysis of sales performance, including:

•	Revenue trends

•	Order performance

•	Product line analysis

•	Geographic sales distribution

•	Deal size contribution

•	Executive KPI monitoring


The objective of this project is to demonstrate practical skills in:

•	Data cleaning using SQL

•	Data modeling

•	DAX calculations

•	Business intelligence reporting

•	Dashboard design and storytelling	


---


## Tools & Technologies


•	SQL — Data cleaning and preprocessing

•	Power BI Desktop — Dashboard development

•  DAX — KPI calculations and business metrics

•	Excel/CSV Dataset — Source data


---


## Data Cleaning Process (SQL)


Before building the dashboard, the dataset was cleaned and transformed using SQL.


### Cleaning Steps Performed:

•	Removed duplicate records

•	Handled missing/null values

•	Standardized column names

•	Corrected inconsistent data entries

•	Converted data types

•	Validated sales and quantity values

•	Prepared date fields for time intelligence analysis


## Example SQL Operations:

Remove NULL sales values

```
DELETE FROM sales_data

WHERE sales IS NULL;
```

-- Standardize country names

```
UPDATE sales_data

SET country = 'USA'

WHERE country = 'United States';
```

-- Convert order date format

```
ALTER TABLE sales_data

ALTER COLUMN order_date DATE;
```

---


## Dashboard Features


### KPI Cards

•  Total Sales (YoY)

•  Total Orders (MoM)

•  Quantity Sold

•  Average Order Value


### Sales Trend Analysis

•  Current Year vs Last Year

•  Target Sales Comparison

•  Monthly Performance Tracking


### Product Line Analysis

•  Sales by Product Line

•  Best Performing Product Categories


### Geographic Insights

•  Sales by Country (Map Visualization)

•  Country Sales Ranking


### Deal Size Analysis

•  Revenue Contribution by Deal Size


### Executive Insights & Recommendations

•  Automated business insights

•  Strategic recommendations based on sales performance


---


## Key DAX Measures


Total Sales

```
Total Sales = SUM(auto_sales_clean[sales])
```

Sales Last Year

```
Sales Last Year =
CALCULATE(
    [Total Sales],
    SAMEPERIODLASTYEAR('Date'[Date])
)
```

Sales Growth %

```
Sales Growth % =
DIVIDE(
    [Total Sales] - [Sales Last Year],
    [Sales Last Year]
)
```

Average Order Value

```
Average Order Value =
DIVIDE(
    [Total Sales],
    [Total Orders]
)
```

---


## Dashboard Preview

( [<img width="100%" alt="Sales Dashboard" src="https://github.com/user-attachments/assets/5e6dbe7d-db97-4f30-96f6-a898a9ed045b">]
)

---


## Business Insights


•  Classic Cars generated the highest revenue among product lines.

•  Medium deal sizes contributed the majority of total sales.

•  November recorded peak sales performance.

•  Several countries showed strong sales concentration and growth potential.


---


## Project Highlights


•  End-to-end BI workflow implementation

•  Clean and professional dashboard design

•  Interactive slicers and filters

•  Dynamic KPI calculations

•  Executive-level business reporting


---


## Skills Demonstrated


•  SQL Data Cleaning

•  Data Transformation

•  Data Modeling

•  DAX Calculations

•  Power BI Visualization

•  Business Intelligence Reporting

•  Dashboard Design

•  Analytical Thinking



## Author


## Ryan Tañajura Baruel  

Business Intelligence / Data Analytics Portfolio Project

GitHub: (https://github.com/ryanbaruel)

LinkedIn: www.linkedin.com/in/ryan-baruel

