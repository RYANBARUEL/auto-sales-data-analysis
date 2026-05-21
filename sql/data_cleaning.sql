-- ==========================================
-- DATA CLEANING
-- Auto Sales Dataset
-- ==========================================


-- Standardize product line

UPDATE dbo.auto_sales_clean

SET productline =
UPPER(
LTRIM(
RTRIM(productline)
));


-- Standardize country

UPDATE dbo.auto_sales_clean

SET country =
UPPER(
LTRIM(
RTRIM(country)
));


-- Clean customer names

UPDATE dbo.auto_sales_clean

SET customername =
LTRIM(
RTRIM(customername)
);


-- Clean phone values

UPDATE dbo.auto_sales_clean

SET phone =
LTRIM(
RTRIM(phone)
);

-- Standardize status

UPDATE dbo.auto_sales_clean

SET status =

CASE

WHEN UPPER(status)='SHIPPED'
THEN 'Shipped'

WHEN UPPER(status)='RESOLVED'
THEN 'Resolved'

WHEN UPPER(status)='DISPUTED'
THEN 'Disputed'

WHEN UPPER(status)='CANCELLED'
THEN 'Cancelled'

WHEN UPPER(status)='ON HOLD'
THEN 'On Hold'

ELSE 'In Process'

END;

ALTER TABLE dbo.auto_sales_clean

ADD contact_name VARCHAR(255);


UPDATE dbo.auto_sales_clean

SET contact_name =

LTRIM(contactfirstname)
+
' '
+
LTRIM(contactlastname);

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