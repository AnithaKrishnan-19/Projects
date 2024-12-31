use rdbms;
Select * from WalmartSalesData;

--Retieve all data from the table--
Select * from WalmartSalesData;

--Invoice Id and Total column--
Select Invoice_id ,Total from WalmartSalesData;

--select distinct cities form dataset--
Select distinct city from WalmartSalesData;

--count the total no of rows in the table--
Select count(*) as total_rows from WalmartSalesData;

--Sales grater than 100--
Select * from WalmartSalesData
where Total > 100 ;

--Find all transactions in the "Health and beauty" product line--
Select * from WalmartSalesData where Product_line = 'Health and beauty';

--Get all records for customers in the city "New York."--
Select * from WalmartSalesData where city = 'New York';

--Retrieve all records sorted by total sales in descending order--
Select * from WalmartSalesData order by Total desc;

--Get the top 5 transactions with the highest totals--
Select top 5 * from WalmartSalesData order by  Total desc;

--Calculate total sales revenue--
Select sum(Total) as Total_Revenue from WalmartSalesData;

--Calculate average sales amount--
select avg(Total) as Avg_Sales from WalmartSalesData;

--Determine the Maximum sales--
Select max(Total) as Maximum_sales from WalmartSalesData;

--Determine the Minimum sales--
Select min(Total) as Minimum_sales from WalmartSalesData;

--Group sales by product line and calculate total sales for each--
Select Product_line, sum(Total) AS Total_sales 
from WalmartSalesData 
group by Product_line;

--Find the number of transactions per payment method--
Select Payment, COUNT(*) AS Transaction_Count 
from WalmartSalesData 
group by Payment;

--Group sales by city and find the average sales amount--
Select City, AVG(Total) AS Average_Sales 
from WalmartSalesData 
group by City;

--sales by category--
Select Product_line, sum(Total) as Total_Sales 
from WalmartSalesData 
group by Product_line
order by Total_Sales desc;

--Distinct value product line --
Select distinct Product_line from WalmartSalesData;

--Top 5 sales transactions--
Select top 5 Invoice_ID, Total 
from WalmartSalesData 
order by  Total desc;
