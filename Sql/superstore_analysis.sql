USE sales_analytics;

TRUNCATE TABLE superstore_sales;

LOAD DATA LOCAL INFILE 'C:/Users/benmc/OneDrive/Desktop/Sales Analytics/data/superstore_cleaned.csv'
INTO TABLE superstore_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
row_id,
order_id,
order_date,
ship_date,
ship_mode,
customer_id,
customer_name,
segment,
country_region,
city,
state_province,
postal_code,
region,
product_id,
category,
sub_category,
product_name,
sales,
quantity,
discount,
profit,
year,
month_number,
month,
quarter,
shipping_days,
profit_margin,
order_month
);

SELECT COUNT(*) FROM superstore_sales;

SELECT *
FROM superstore_sales
LIMIT 5;

UPDATE superstore_sales
SET discount_band =
CASE
    WHEN discount = 0 THEN 'No Discount'
    WHEN discount <= 0.2 THEN 'Low Discount'
    WHEN discount <= 0.5 THEN 'Medium Discount'
    ELSE 'High Discount'
END;

SELECT discount_band, COUNT(*) AS total_rows
FROM superstore_sales
GROUP BY discount_band;

SELECT 
    discount,
    discount_band,
    sales,
    profit
FROM superstore_sales
LIMIT 10;

SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(profit_margin) AS average_profit_margin,
    SUM(quantity) AS total_items_sold
FROM superstore_sales;

SELECT
    SUM(sales) / COUNT(DISTINCT order_id) AS average_order_value
FROM superstore_sales;

SELECT
    YEAR(order_date) AS year,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore_sales
GROUP BY YEAR(order_date)
ORDER BY year;

SELECT
    YEAR(order_date) AS year,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percentage
FROM superstore_sales
GROUP BY YEAR(order_date)
ORDER BY year;

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    ROUND(SUM(sales), 2) AS monthly_sales,
    ROUND(SUM(profit), 2) AS monthly_profit,
    COUNT(DISTINCT order_id) AS monthly_orders
FROM superstore_sales
GROUP BY 
    YEAR(order_date),
    MONTH(order_date)
ORDER BY 
    year,
    month;
    
    -- Reusable Monthly Trend
    SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore_sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

SELECT
    category,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin
FROM superstore_sales
GROUP BY category
ORDER BY total_profit DESC;

SELECT
    product_name,
    category,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore_sales
GROUP BY 
    product_name,
    category
ORDER BY total_profit DESC
LIMIT 10;

SELECT
    product_name,
    category,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore_sales
GROUP BY 
    product_name,
    category
ORDER BY total_profit ASC
LIMIT 10;

SELECT
    product_name,
    category,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND((SUM(profit)/SUM(sales))*100,2) AS profit_margin
FROM superstore_sales
GROUP BY 
    product_name,
    category
HAVING SUM(sales) > 1000
ORDER BY profit_margin ASC
LIMIT 10;

SELECT
    discount_band,
    COUNT(*) AS transactions,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND((SUM(profit)/SUM(sales))*100,2) AS profit_margin
FROM superstore_sales
GROUP BY discount_band
ORDER BY total_sales DESC;

SELECT
    category,
    discount_band,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND((SUM(profit)/SUM(sales))*100,2) AS profit_margin
FROM superstore_sales
GROUP BY 
    category,
    discount_band
ORDER BY 
    category,
    profit_margin;
    
    SELECT
    customer_name,
    segment,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore_sales
GROUP BY
    customer_name,
    segment
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    segment,
    COUNT(DISTINCT customer_name) AS customers,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND((SUM(profit)/SUM(sales))*100,2) AS profit_margin
FROM superstore_sales
GROUP BY segment
ORDER BY total_profit DESC;

SELECT
    customer_name,
    segment,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore_sales
GROUP BY
    customer_name,
    segment
ORDER BY total_profit DESC
LIMIT 10;