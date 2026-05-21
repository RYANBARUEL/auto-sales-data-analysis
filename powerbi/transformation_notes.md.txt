# Power Query Transformations

## Data Preparation Steps

### Data Type Validation
- Verified numeric columns:
  - Quantity Ordered
  - Price Each
  - Sales
  - MSRP

- Verified date field:
  - Order Date

### Data Cleaning
- Standardized Product Line values using SQL
- Standardized Country values
- Trimmed Customer Name fields
- Cleaned Phone values
- Standardized Status categories

### Feature Engineering
Created additional fields in SQL:

- order_year
- order_month
- order_quarter
- sales_category
- contact_name

### Power BI Preparation
- Loaded cleaned dataset (auto_sales_clean.csv)
- Validated relationships
- Created DAX measures
- Built KPI cards
- Developed dashboard visuals

### Output
Final dashboard created in:

Sales_Performance_Dashboard.pbix