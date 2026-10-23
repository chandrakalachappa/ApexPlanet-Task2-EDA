-- ApexPlanet Task 2: SQL business questions
-- Table name: dataset

-- Q1 Total records and customers
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT Customer_ID) AS unique_customers, COUNT(DISTINCT Order_ID) AS unique_orders FROM dataset;

-- Q2 Sales by category
SELECT Category, COUNT(*) AS order_rows, SUM(Quantity) AS total_quantity, ROUND(SUM(Total_Sales), 2) AS total_sales FROM dataset GROUP BY Category ORDER BY total_sales DESC;

-- Q3 Top five products by sales
SELECT Product, COUNT(*) AS order_rows, SUM(Quantity) AS total_quantity, ROUND(SUM(Total_Sales), 2) AS total_sales FROM dataset GROUP BY Product ORDER BY total_sales DESC LIMIT 5;

-- Q4 Monthly sales trend
SELECT strftime('%Y-%m', Order_Date) AS order_month, COUNT(*) AS order_rows, ROUND(SUM(Total_Sales), 2) AS total_sales FROM dataset GROUP BY strftime('%Y-%m', Order_Date) ORDER BY order_month;

-- Q5 Sales by city
SELECT City, COUNT(*) AS order_rows, ROUND(SUM(Total_Sales), 2) AS total_sales FROM dataset GROUP BY City ORDER BY total_sales DESC;

-- Q6 Sales by gender
SELECT Gender, COUNT(*) AS order_rows, ROUND(SUM(Total_Sales), 2) AS total_sales, ROUND(AVG(Total_Sales), 2) AS average_sales_per_row FROM dataset GROUP BY Gender ORDER BY total_sales DESC;

-- Q7 Sales by age group
SELECT Age_Group, COUNT(*) AS order_rows, ROUND(SUM(Total_Sales), 2) AS total_sales, ROUND(AVG(Total_Sales), 2) AS average_sales_per_row FROM dataset GROUP BY Age_Group ORDER BY total_sales DESC;

