Auto Sales Dashboard Project

Project Overview
This Power BI project analyzes automotive sales performance using data from the Auto Sales dataset. The goal is to provide insights into total sales, company trends, and outlier detection, supporting data-driven decisions and performance monitoring.

The interactive dashboard allows users to explore sales by company, product line, country, and deal size, with slicers and visuals designed for intuitive analysis.

Dataset Description

File Name: Auto_Sales_Data.csv (cleaned and used in Power BI)
Rows: ~1000 records
Columns:

Column Name	              Description

Company_Name	            Name of the customer or company
Country	                  Customer’s country
ProductLine	              Category of the product sold
DealSize	                Classification of the deal (Small, Medium, Large)
TotalSales  	            Total sales amount for each transaction
OrderNumber	              Unique identifier for the order
Status	                  Order or delivery status
OrderDate	                Date the order was placed
Qtr	                      Quarter of the year (derived column)
MonthName	                Month name (derived column)

Data Cleaning and Preparation
Data was cleaned using Excel and transformed in Power BI:
•	Removed duplicates and missing values
•	Standardized column names (Customer Name → Company_Name, Sales → Total Sales)
•	Added derived columns for Qtr and MonthName
•	Converted OrderDate to proper date format

Ensured consistent text casing and currency formatting
# 1 Project: Auto Sales Dashboard (Power BI)
This dashboard provides:
•	Overall sales performance and trends
•	Customer insights (top buyers, frequent customers)
•	Outlier analysis for unusual sales data
•	Interactive slicers synced across pages
