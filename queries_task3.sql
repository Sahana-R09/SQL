
-- 1. VIEW TABLE STRUCTURE

-- Check column names and data types
PRAGMA table_info(sales_data);



-- 2. VIEW SAMPLE DATA

-- Display first 10 records to understand the dataset
SELECT *
FROM sales_data
LIMIT 10;


-- 3. COUNT TOTAL RECORDS

-- Verify total number of rows in the table
SELECT COUNT(*) AS total_rows
FROM sales_data;



-- 4. FILTERING USING WHERE

-- Find all records where category is 'Technology'
SELECT *
FROM sales_data
WHERE category = 'Technology';


-- 5. SORTING USING ORDER BY

-- Top 10 highest sales
SELECT *
FROM sales_data
ORDER BY sales DESC
LIMIT 10;



-- 6. AGGREGATION USING GROUP BY

-- Total sales by category
SELECT category,
       SUM(sales) AS total_sales
FROM sales_data
GROUP BY category;


-- 7. MULTIPLE AGGREGATIONS

-- Sales summary by region
SELECT region,
       SUM(sales) AS total_sales,
       AVG(profit) AS avg_profit,
       COUNT(*) AS total_orders
FROM sales_data
GROUP BY region;


-- 8. HAVING CLAUSE (FILTER GROUPED DATA)

-- Show only categories with total sales greater than 100000
SELECT category,
       SUM(sales) AS total_sales
FROM sales_data
GROUP BY category
HAVING SUM(sales) > 100000;


-- 9. DATE RANGE FILTERING USING BETWEEN

-- Monthly sales report jan 2019
SELECT SUM(sales) AS monthly_sales
FROM sales_data
WHERE order_date BETWEEN '01-01-2019' AND '01-31-2019';




-- 10. PATTERN MATCHING USING LIKE

-- Search customers with “Smith”
SELECT *
FROM sales_data
WHERE customer_name LIKE '%Smith%';




-- 11. TOP 5 CUSTOMERS BY TOTAL SPEND

SELECT customer_name,
       SUM(sales) AS total_spend
FROM sales_data
GROUP BY customer_name
ORDER BY total_spend DESC
LIMIT 5;













