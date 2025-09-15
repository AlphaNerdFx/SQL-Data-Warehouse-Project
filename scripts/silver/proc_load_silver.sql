/*
========================================================================================================
Stored Procedure : Load  Layer (Bronze -> Silver)
========================================================================================================
Script Purpose:
  This stored procedure transforms and loads data into the 'silver' schema 
  from the 'bronze' schema as part of the Mechadillion architecture pipeline. 
  It performs the following actions:
  - Cleans, standardizes, and applies business rules to the raw data ingested in the bronze layer.
  - Ensures data types, formats, and referential integrity are aligned with the silver schema design.
  - Inserts the curated and validated data into silver tables for downstream consumption.

  Parameters:
  None. 
  This stored procedure does not accept any parameters or return any values.

  Usage Example:
    EXEC silver.load_silver;
  ========================================================================================================
*/

CREATE OR ALTER PROCEDURE silver.load_silver AS
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME;
	
	BEGIN TRY
		SET @batch_start_time = GETDATE()
		
		-- Loading silver.crm_cust_info
		SET @start_time = GETDATE()
		
		PRINT '=================================================='
		PRINT 'Loading Silver Layer'
		PRINT '=================================================='
	
		PRINT '--------------------------------------------------'
		PRINT 'Loading CRM Tables'
		PRINT '--------------------------------------------------'

		PRINT '>> Truncating Data Into: silver.crm_cust_info'
		TRUNCATE TABLE silver.crm_cust_info
		PRINT '>> Inserting Data Into: silver.crm_cust_info'
		INSERT INTO silver.crm_cust_info
		(
			cst_id,
			cst_key,
			cst_firstname,
			cst_lastname,
			cst_marital_status,
			cst_gndr,
			cst_create_date
		)
		SELECT 
			cst_id,
			cst_key,
			TRIM(cst_firstname) cst_first_name,
			TRIM(cst_lastname) cst_last_name,
			CASE WHEN TRIM(UPPER(cst_marital_status)) = 'M' THEN 'Married'
				 WHEN TRIM(UPPER(cst_marital_status)) = 'S' THEN 'Single'
				 Else 'n/a' -- Normalize material status values to readable format
			END cst_marital_status,
			CASE WHEN TRIM(UPPER(cst_gndr)) = 'M' THEN 'Male'
				 WHEN TRIM(UPPER(cst_gndr)) = 'F' THEN 'Female'
				 ELSE 'n/a' -- Normalize gender values to readable format
			END cst_gndr,
			cst_create_date
		FROM(
			SELECT 
				*,
				RANK() OVER(PARTITION BY cst_id ORDER BY cst_create_date DESC) flag_last
			FROM bronze.crm_cust_info
			WHERE cst_id IS NOT NULL
		)t WHERE flag_last = 1 -- Select the most recent record per customer

		SET @end_time = GETDATE()
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'
		PRINT '-------------------------------------------------'

		-- Loading silver.crm_prd_info
		SET @start_time = GETDATE()
		
		PRINT '>> Truncating Data Into: silver.crm_prd_info'
		TRUNCATE TABLE silver.crm_prd_info
		PRINT '>> Inserting Data Into: silver.crm_prd_info'
		INSERT INTO silver.crm_prd_info (
			prd_id,
			cat_id,
			prd_key,
			prd_nm,
			prd_cost,
			prd_line,
			prd_start_dt,
			prd_end_dt
		)

		SELECT
			prd_id,
			REPLACE(SUBSTRING(prd_key,1,5),'-','_') cat_id, -- Extract category ID  
			SUBSTRING(prd_key, 7, LEN(prd_key)) prd_key, -- Extract product key
			prd_nm,
			ISNULL(prd_cost, 0) prd_cost,
			CASE UPPER(TRIM(prd_line)) 
				 WHEN  'M' THEN 'Mountain'
				 WHEN  'R' THEN 'Road'
				 WHEN  'S' THEN 'Other Sales'
				 WHEN  'T' THEN 'Touring'
				 ELSE 'n/a'
			END prd_line, -- Map product line codes to descriptive values
			prd_start_dt,
			DATEADD(day, -1, LEAD(prd_start_dt) OVER (PARTITION BY prd_key ORDER BY prd_start_dt, prd_key)) prd_end_dt 
			-- Calculate end date as one day before the next start date
		FROM bronze.crm_prd_info

		SET @end_time = GETDATE()
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'
		PRINT '-------------------------------------------------'

		-- Loading silver.crm_sales_details
		SET @start_time = GETDATE()	
		
		PRINT '>> Truncating Data Into: silver.crm_sales_details'
		TRUNCATE TABLE silver.crm_sales_details
		PRINT '>> Inserting Data Into: silver.crm_sales_details'
		INSERT INTO silver.crm_sales_details (
			sls_ord_num,
			sls_prd_key,
			sls_cust_id,
			sls_order_dt,
			sls_ship_dt,
			sls_due_dt,
			sls_sales,
			sls_quantity,
			sls_price
		)
		SELECT
			sls_ord_num,
			sls_prd_key,
			sls_cust_id,
			CASE WHEN sls_order_dt = 0 OR LEN(sls_order_dt) != 8 THEN NULL
				 ELSE CAST(CAST(sls_order_dt AS VARCHAR) AS DATE)  
			END sls_order_dt,
			CASE WHEN sls_ship_dt = 0 OR LEN(sls_ship_dt) != 8 THEN NULL
				 ELSE CAST(CAST(sls_ship_dt AS VARCHAR) AS DATE)  
			END sls_ship_dt,
			CASE WHEN sls_due_dt = 0 OR LEN(sls_due_dt) != 8 THEN NULL
				 ELSE CAST(CAST(sls_due_dt AS VARCHAR) AS DATE)  
			END sls_due_dt,
			CASE WHEN sls_sales IS NULL OR sls_sales <= 0 OR sls_sales != sls_quantity * ABS(sls_price)
					THEN sls_quantity * ABS(sls_price) 
				 ELSE sls_sales
			END sls_sales, -- Recalculate sales if original value is missing or incorrect
			sls_quantity,
			CASE WHEN sls_price IS NULL OR sls_price <= 0
					THEN sls_sales / NULLIF(sls_quantity, 0)
				 ELSE sls_price
			END sls_price -- Derive price if original value is invalid
		FROM bronze.crm_sales_details

		SET @end_time = GETDATE()
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'
		PRINT '-------------------------------------------------'

		-- Loading silver.erp_cust_az12
		SET @start_time = GETDATE()		
		
		PRINT '--------------------------------------------------'
		PRINT 'Loading ERP Tables'
		PRINT '--------------------------------------------------'
		
		PRINT '>> Truncating Data Into: silver.erp_cust_az12'
		TRUNCATE TABLE silver.erp_cust_az12
		PRINT '>> Inserting Data Into: silver.erp_cust_az12'
		INSERT INTO silver.erp_cust_az12 (cid, bdate, gen)
		SELECT
			CASE WHEN cid LIKE 'NAS%' THEN SUBSTRING(cid,4,LEN(cid))
				ELSE cid
			END cid,
			CASE WHEN bdate > GETDATE() THEN NULL
				 ELSE bdate
			END bdate,
			CASE WHEN gen = 'M' THEN 'Male'
				 WHEN gen = 'F' THEN 'Female'
				 WHEN gen = ' ' THEN NULL
				 ELSE TRIM(gen)
			END gen
		FROM bronze.erp_cust_az12

		SET @end_time = GETDATE()
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'
		PRINT '-------------------------------------------------'

		-- Loading silver.erp_loc_a101
		SET @start_time = GETDATE()		
		
		PRINT '>> Truncating Data Into: silver.erp_loc_a101'
		TRUNCATE TABLE silver.erp_loc_a101
		PRINT '>> Inserting Data Into: silver.erp_loc_a101'
		INSERT INTO silver.erp_loc_a101 (cid,cntry)
		SELECT
			TRIM(REPLACE(cid,'-','')) cid,
			CASE WHEN TRIM(cntry) IN ('US','USA','United States') THEN 'United States'  
				 WHEN TRIM(cntry) IN ('Germany','DE') THEN 'Germany'
				 WHEN TRIM(cntry) = ' ' OR cntry IS NULL THEN 'n/a'
				 ELSE TRIM(cntry)
			END cntry -- Normalize and Handle missing or black country codes
		FROM bronze.erp_loc_a101
		
		WHERE REPLACE(cid,'-','') NOT IN (SELECT cst_key FROM silver.crm_cust_info)
		
		SET @end_time = GETDATE()
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'
		PRINT '-------------------------------------------------'
		
		-- Loading silver.erp_px_cat_g1v2
		SET @start_time = GETDATE()		
		
		PRINT '>> Truncating Data Into: silver.erp_px1_cat_g1v2'
		TRUNCATE TABLE silver.erp_px_cat_g1v2
		PRINT '>> Inserting Data Into: silver.erp_px_cat_g1v2'
		INSERT INTO silver.erp_px_cat_g1v2 (id,cat,subcat,maintenance)
		SELECT 
			id,
			cat,
			subcat,
			maintenance
		FROM bronze.erp_px_cat_g1v2
		
		SET @end_time = GETDATE()
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'
		PRINT '-------------------------------------------------'
		
		SET @batch_end_time = GETDATE()
		
		PRINT '================================================='
		PRINT '- Loading Silver Layer is Completed -' 
		PRINT '- Total Batch Load Duration: ' + CAST(DATEDIFF(second, @batch_start_time, @batch_end_time) AS NVARCHAR) + ' seconds -'
		PRINT '================================================='

	END TRY
	
	BEGIN CATCH
		PRINT '================================================='
		PRINT 'Error Message: ' + ERROR_MESSAGE()
		PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS NVARCHAR)
		PRINT 'Error State: ' + CAST(ERROR_STATE() AS NVARCHAR)
		PRINT '================================================='
	END CATCH

END
