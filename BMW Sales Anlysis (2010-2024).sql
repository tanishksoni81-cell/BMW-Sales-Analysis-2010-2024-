use sales_bmw;
select * from sales_bmw;
DESCRIBE sales_bmw;

# What is the total sales volume and total revenue?
SELECT 
    SUM(Sales_Volume) AS total_sales,
    SUM(Price_USD * Sales_Volume) AS total_revenue
FROM sales_bmw;

# Sales Trend Over The Year
# How has sales changed over time?
select 
year, sum(sales_volume) as total_sales
from sales_bmw
group by year
order by year;

# Sales by Region
# Which region has the highest sales?
select region, sum(sales_volume) as total_sales
from sales_bmw
group by region 
order by total_sales desc;

# Top Selling Models
# Which car models are the best sellers?
select model, sum(sales_volume) as total_sales
from sales_bmw
group by model
order by total_sales desc
limit 10;

#Revenue by Model
# Which models generate the most revenue?
select model, SUM(Price_USD * Sales_Volume) AS total_revenue
from sales_bmw
group by model
order by total_revenue desc;

# Fuel Type Analysis
# Which fuel type contributes the most to sales?
select fuel_type, SUM(Price_USD * Sales_Volume) AS total_revenue
from sales_bmw
group by fuel_type
order by total_revenue desc;

# 7. Transmission Preference
# Do customers prefer automatic or manual cars?
select transmission, count(*) as total_orders
from sales_bmw
group by transmission;

# 8. Color Preference
# Which car colors are most popular?
select color, sum(sales_volume) as total_sales
from sales_bmw
group by color
order by total_sales desc;

# 9. Sales Classification
# How many high vs low sales records exist?
select sales_classification, count(*) as total_orders
from sales_bmw
group by sales_classification;

# 10. Average Price by Region
# What is the average car price in each region?
select region, avg(price_usd) as average_price
from sales_bmw
group by region 
order by average_price desc;

# 11. High Revenue Regions
# Which regions generate the most revenue?
select region, sum(price_usd * sales_volume) as revenue
from sales_bmw
group by region
order by revenue desc;

# 12. Year-wise Revenue Growth
# How is revenue growing year by year?
select year, sum(price_usd * sales_volume) as revenue 
from sales_bmw
group by year
order by revenue;