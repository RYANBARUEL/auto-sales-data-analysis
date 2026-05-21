-- ==========================================
-- DATA QUALITY CHECK
-- Auto Sales Dataset
-- ==========================================

SELECT COUNT(*) AS total_rows

FROM dbo.auto_sales_raw;


SELECT

ordernumber,

productcode,

COUNT(*) AS duplicate_count

FROM dbo.auto_sales_raw

GROUP BY

ordernumber,

productcode

HAVING COUNT(*) > 1;


-- Missing values check

SELECT

SUM(
CASE WHEN ordernumber IS NULL
THEN 1 ELSE 0 END
)

AS ordernumber_null,

SUM(
CASE WHEN sales IS NULL
THEN 1 ELSE 0 END
)

AS sales_null,

SUM(
CASE WHEN customername IS NULL
THEN 1 ELSE 0 END
)

AS customer_null,

SUM(
CASE WHEN country IS NULL
THEN 1 ELSE 0 END
)

AS country_null

FROM dbo.auto_sales_raw;


-- Category validation

SELECT DISTINCT status

FROM dbo.auto_sales_raw

ORDER BY status;


SELECT DISTINCT productline

FROM dbo.auto_sales_raw

ORDER BY productline;


SELECT DISTINCT dealsize

FROM dbo.auto_sales_raw

ORDER BY dealsize;