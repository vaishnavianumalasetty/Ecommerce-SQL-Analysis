CREATE DATABASE ecommerce;
USE ecommerce;
SELECT * FROM sales_data LIMIT 10;
select sum(unitprice*quantity) as revenue
from sales_data;
SELECT country, SUM(unitprice * quantity) AS revenue
FROM sales_data
GROUP BY country
ORDER BY revenue DESC
LIMIT 5;
select description, sum(unitprice*quantity) as revenue 
from sales_data
group by description 
order by revenue desc  
limit 5;
select month(invoicedate) as month,
       sum(quantity*unitprice) as revenue
from sales_data
group by month
order by month asc;
select MONTH(STR_TO_DATE(invoicedate, '%m/%d/%Y %H:%i')) as month,  
sum(quantity*unitprice) as revenue 
from sales_data
group by month
order by month asc;
select count(distinct(MONTH(STR_TO_DATE(invoicedate, '%m/%d/%Y %H:%i')))) as month
from sales_data;
select count(distinct(invoiceno)) as orders 
from sales_data;
