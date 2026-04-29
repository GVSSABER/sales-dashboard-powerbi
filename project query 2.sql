SELECT * FROM sales LIMIT 10;
SELECT SUM(sales) AS total_sales
FROM sales;
SELECT SUM(profit) AS total_profit
FROM sales;
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category;
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region;
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC
LIMIT 5;
SELECT region, SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_profit DESC
LIMIT 5;
SELECT AVG(sales) AS avg_sales
FROM sales;
SELECT *
FROM sales
WHERE profit > 100;
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(profit) AS total_profit
FROM sales
GROUP BY month
ORDER BY month;
SELECT 
    category,
    SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
