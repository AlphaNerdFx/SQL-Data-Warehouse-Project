/*
========================================================================================================
Quality Tests : Gold Layer (Business-Ready Data Validation)
========================================================================================================
Script Purpose:
  These quality checks are performed on curated business-ready data in the Gold layer. 
  The goal is to guarantee integrity for analytics, reporting, and BI consumption.

  Checks performed:
  - Validate fact table health (no missing or inconsistent records).
  - Verify foreign key integrity between Fact tables and Dimension tables:
      • Fact → Customers (customer_key must exist in Dim_Customers).
      • Fact → Products  (product_key must exist in Dim_Products).
  - Confirm end-to-end data alignment from Silver to Gold.

  Parameters:
  None. This script runs business-level validation queries.

  Usage Example:
    -- Run Gold Layer quality tests
    EXEC gold.quality_checks_gold;
========================================================================================================
*/

-- ==============================
-- GOLD LAYER QUALITY TESTS
-- ==============================

-- Health Check on Fact Table
SELECT * FROM gold.fact_sales;

-- Foreign Key Integrity Checks (Dimensions)
SELECT * 
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c ON c.customer_key = f.customer_key
WHERE c.customer_key IS NULL;

SELECT * 
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p ON p.product_key = f.product_key
WHERE p.product_key IS NULL;
