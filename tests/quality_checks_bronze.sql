/*
========================================================================================================
Quality Tests : Bronze Layer (Raw Data Validation)
========================================================================================================
Script Purpose:
  These quality checks are performed on the raw ingested data in the Bronze layer. 
  The goal is to detect data anomalies early before applying any transformations.

  Checks performed:
  - Detect duplicate or NULL primary keys in customer tables.
  - Identify records with unwanted leading/trailing spaces.
  - Validate raw sales dates for correct length, order, and range.
  - Verify that sales values align with the rule: Sales = Quantity * Price.
  - Validate ERP data (customers, products, categories, locations) for trimming, 
    consistency, and logical value ranges (e.g., valid birth dates, standardized codes).

  Parameters:
  None. This script runs general validation queries.

  Usage Example:
    -- Run Bronze Layer quality tests
    EXEC bronze.quality_checks_bronze;
========================================================================================================
*/

-- ==============================
-- BRONZE LAYER QUALITY TESTS
-- ==============================

-- Check for duplicates of the primary key
SELECT cst_id, COUNT(*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- Filter duplicate rows (keeping latest by create date)
SELECT *
FROM (
    SELECT *,
           RANK() OVER(PARTITION BY cst_id ORDER BY cst_create_date DESC) flag_last
    FROM bronze.crm_cust_info
) t
WHERE flag_last != 1;

-- Check for unwanted spaces
SELECT cst_firstname FROM bronze.crm_cust_info WHERE cst_firstname != TRIM(cst_firstname);
SELECT cst_lastname  FROM bronze.crm_cust_info WHERE cst_lastname  != TRIM(cst_lastname);
SELECT cst_gndr      FROM bronze.crm_cust_info WHERE cst_gndr      != TRIM(cst_gndr);

-- Check for invalid sales dates
SELECT NULLIF(sls_order_dt,0) sls_order_dt
FROM bronze.crm_sales_details
WHERE sls_order_dt <= 0 
   OR LEN(sls_order_dt) != 8 
   OR sls_order_dt > 20500101
   OR sls_order_dt < 1900101;

SELECT NULLIF(sls_order_dt,0) sls_order_dt,
       NULLIF(sls_ship_dt,0) sls_ship_dt,
       NULLIF(sls_due_dt,0)  sls_due_dt
FROM bronze.crm_sales_details
WHERE sls_ship_dt <= 0 
   OR LEN(sls_ship_dt) != 8 
   OR sls_ship_dt > 20500101
   OR sls_ship_dt < 1900101
   OR sls_ship_dt < sls_order_dt
   OR sls_due_dt  < sls_order_dt
   OR sls_due_dt  < sls_ship_dt;

-- Business Rule: Sales = Quantity * Price
SELECT DISTINCT sls_sales, sls_quantity, sls_price
FROM bronze.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price
   OR sls_sales IS NULL 
   OR sls_quantity IS NULL 
   OR sls_price IS NULL
   OR sls_sales <= 0 
   OR sls_quantity <= 0 
   OR sls_price <= 0
ORDER BY sls_sales, sls_quantity, sls_price;

-- ERP Bronze Checks
SELECT * FROM bronze.erp_cust_az12 WHERE cid != TRIM(cid) OR gen != TRIM(gen);
SELECT * FROM bronze.erp_cust_az12 WHERE bdate < '1925-01-01' OR bdate > GETDATE();
SELECT DISTINCT gen FROM bronze.erp_cust_az12;

-- ERP Product Categories Bronze
SELECT * FROM bronze.erp_px_cat_g1v2
WHERE cat != TRIM(cat) OR subcat != TRIM(subcat) OR maintenance != TRIM(maintenance);

SELECT DISTINCT maintenance FROM bronze.erp_px_cat_g1v2;

-- ERP Locations Bronze
SELECT DISTINCT cntry FROM bronze.erp_loc_a101 ORDER BY cntry;
