USE data_running;

-- View all cleaned sales records
SELECT *
FROM cleaned_sales;

-- Total sales by region
SELECT Region, SUM(Sales_Total) AS Total_Sales
FROM cleaned_sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Total sales by product category
SELECT Product_Category, SUM(Sales_Total) AS Total_Sales
FROM cleaned_sales
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

-- Total sales by sales representative
SELECT Sales_Rep, SUM(Sales_Total) AS Total_Sales
FROM cleaned_sales
GROUP BY Sales_Rep
ORDER BY Total_Sales DESC;

-- Total sales by payment status
SELECT Payment_Status, SUM(Sales_Total) AS Total_Sales
FROM cleaned_sales
GROUP BY Payment_Status
ORDER BY Total_Sales DESC;

-- Show pending payment orders
SELECT *
FROM cleaned_sales
WHERE Payment_Status = 'Pending';

-- Count all orders
SELECT COUNT(*) AS Total_Orders
FROM cleaned_sales;

-- Count pending orders
SELECT COUNT(*) AS Pending_Orders
FROM cleaned_sales
WHERE Payment_Status = 'Pending';

-- Count orders by region
SELECT Region, COUNT(*) AS Number_of_Orders
FROM cleaned_sales
GROUP BY Region
ORDER BY Number_of_Orders DESC;