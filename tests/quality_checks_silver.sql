/*
========================================================================================================
Quality Tests : Silver Layer (Cleaned & Standardized Data)
========================================================================================================
Script Purpose:
  These quality checks are performed on the transformed data in the Silver layer. 
  The goal is to ensure data consistency, accuracy, and alignment with business rules.

  Checks performed:
  - Detect duplicate or NULL primary keys in dimension tables.
  - Validate text fields for unwanted spaces after transformations.
  - Ensure product references exist in the sales details table (foreign key checks).
  - Verify no invalid values (NULLs, negatives) in numeric fields such as cost.
  - Confirm proper ordering of date fields (e.g., start < end).
  - Validate sales facts (Sales = Quantity * Price) after cleaning.
  - Standardize categorical attributes (e.g., gender, marital status, product line).
  - Align CRM and ERP customer attributes (gender, IDs, location keys).
  - Confirm data standardization and consistency across ERP sources (customers, locations).

  Parameters:
  None. This script runs standardized validation queries.

  Usage Example:
    -- Run Silver Layer quality tests
    EXEC silver.quality_checks_silver;
========================================================================================================
*/

-- ==============================
-- SILVER LAYER QUALITY TESTS
-- ==============================

-- Check for duplicates/NULLs of primary key
SELECT prd_id, COUNT(*)
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL;

-- Check for unwanted spaces
SELECT * FROM silver.crm_prd_info WHERE prd_nm != TRIM(prd_nm);

-- Check if products exist in sales_details
SELECT * 
FROM silver.crm_prd_info
WHERE SUBSTRING(prd_key, 7, LEN(prd_key)) IN 
      (SELECT sls_prd_key FROM silver.crm_sales_details);

-- Filter unmatched product data after transforming
SELECT * 
FROM silver.crm_prd_info
WHERE REPLACE(SUBSTRING(prd_key,1,5),'-','_') NOT IN
      (SELECT DISTINCT id FROM silver.erp_px_cat_g1v2);

-- Check for NULLs or Negative Numbers
SELECT prd_cost
FROM silver.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL;

-- Standardization & Consistency
SELECT DISTINCT prd_line FROM silver.crm_prd_info;

-- Check for invalid date orders
SELECT *
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt;

-- Sales Health Checks
SELECT * FROM silver.crm_sales_details;

-- Verify consistency in Sales Details
SELECT * 
FROM silver.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price
   OR sls_sales IS NULL OR sls_quantity IS NULL OR sls_price IS NULL
   OR sls_sales <= 0 OR sls_quantity <= 0 OR sls_price <= 0
   OR sls_ship_dt < sls_order_dt
   OR sls_due_dt  < sls_order_dt
   OR sls_due_dt  < sls_ship_dt;

-- ERP Customers Silver Checks
SELECT * FROM silver.erp_cust_az12;
SELECT DISTINCT bdate FROM silver.erp_cust_az12 WHERE bdate < '1924-01-01' OR bdate > GETDATE();
SELECT DISTINCT gen   FROM silver.erp_cust_az12;

-- ERP Locations Silver Checks
SELECT * 
FROM silver.erp_loc_a101
WHERE REPLACE(cid,'-','') NOT IN (SELECT cst_key FROM silver.crm_cust_info);

SELECT DISTINCT cntry FROM silver.erp_loc_a101 ORDER BY cntry;

-- Quality Control: CRM vs ERP Gender Alignment
SELECT DISTINCT
    ci.cst_gndr,
    ca.gen,
    CASE 
        WHEN ci.cst_gndr != 'n/a' THEN ci.cst_gndr
        ELSE COALESCE(ca.gen, 'n/a')
    END new_gen
FROM silver.crm_cust_info ci
LEFT JOIN silver.erp_cust_az12 ca ON ci.cst_key = ca.cid
LEFT JOIN silver.erp_loc_a101 la ON ci.cst_key = la.cid
ORDER BY 1,2;
