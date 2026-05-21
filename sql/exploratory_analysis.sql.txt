-- ==========================================
-- EXPLORATORY DATA ANALYSIS
-- Auto Sales Dataset
-- ==========================================


-- Total Revenue

SELECT

ROUND(
SUM(sales),2
)

AS total_revenue

FROM dbo.auto_sales_clean;


-- Product Performance

SELECT

productline,

ROUND(
SUM(sales),2
)

AS revenue

FROM dbo.auto_sales_clean

GROUP BY productline

ORDER BY revenue DESC;


-- Country Performance

SELECT

country,

ROUND(
SUM(sales),2
)

AS revenue

FROM dbo.auto_sales_clean

GROUP BY country

ORDER BY revenue DESC;


-- Top Customers

SELECT TOP 10

customername,

ROUND(
SUM(sales),2
)

AS customer_revenue

FROM dbo.auto_sales_clean

GROUP BY customername

ORDER BY customer_revenue DESC;


-- Deal Size Performance

SELECT

dealsize,

COUNT(*) AS orders,

ROUND(
SUM(sales),2
)

AS revenue

FROM dbo.auto_sales_clean

GROUP BY dealsize

ORDER BY revenue DESC;