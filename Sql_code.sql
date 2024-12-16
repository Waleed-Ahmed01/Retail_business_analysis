--Find top 10 highest reveue generating products 

select top 10 product_id,sum(sale_price) as sales
from dbo.ORDERS
group by product_id
order by sales desc
;


-- For each category which month has the highest sales

with m_cte as(
select category,month(order_date) as m,  
sum(sale_price) as total_sales from dbo.ORDERS 
group by category,month(order_date) 
)
 
select category,m, total_sales,Rn from(
SELECT category,m,total_sales,DENSE_RANK() OVER(PARTITION BY CATEGORY ORDER BY total_sales DESC) AS Rn FROM m_cte
)sb 
where Rn=1

;

--Top 5 highest selling products for each region

WITH GRP as(
SELECT REGION,PRODUCT_ID,
SUM(CAST(QUANTITY AS INT)) AS NO_SOLD FROM DBO.ORDERS 
GROUP BY REGION,product_id 
)
SELECT * FROM(
SELECT REGION,PRODUCT_ID,NO_SOLD, 
DENSE_RANK() OVER(PARTITION BY REGION ORDER BY NO_SOLD DESC)AS RNK FROM GRP) AS C
WHERE RNK<=5
;

-- month over month growth comparison for 2022 and 2023

WITH YOY AS(
SELECT YEAR(ORDER_DATE) AS YEARLY ,
MONTH(ORDER_DATE) AS MONTHLY ,SUM(SALE_PRICE) AS TOTAL FROM DBO.ORDERS 
GROUP BY YEAR(ORDER_DATE),MONTH(ORDER_DATE)
)
SELECT MONTHLY,
sum(CASE  WHEN YEARLY=2022 THEN TOTAL ELSE 0 end) as sales_22,
sum(CASE WHEN YEARLY=2023 THEN TOTAL ELSE 0 end) as sales_23
FROM YOY
group by monthly
order by monthly
;

--Profit growth for subcategories from highest to lowest (2022 to 2023)

with cte as(
select sub_category,year(order_date) as yr,sum(profit) as pr from dbo.ORDERS group by sub_category,year(order_date) 
)
,
cte2 as (select 
sub_category,
sum(case when yr=2022 then pr else 0 end) as pr_2022,
sum(case when yr=2023 then pr else 0 end) as pr_2023
from cte 
group by sub_category
)
select *,(pr_2023-pr_2022) as profit_growth
from  cte2
order by (pr_2023-pr_2022) desc
;