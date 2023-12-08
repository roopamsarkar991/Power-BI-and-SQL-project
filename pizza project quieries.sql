select * from pizza_sales;

/*Total Revenue*/
select sum(total_price) as Total_revenue from pizza_sales;

/*Average order value*/
SELECT SUM(TOTAL_PRICE) /COUNT(DISTINCT(ORDER_ID)) AS AVERAGE_ORDER_VALUE FROM PIZZA_SALES;

/*Total pizza sold*/
select sum(quantity) as Total_pizzas_sold from pizza_sales;

/*Count of total orders*/
select count(distinct order_id) as Total_orders from pizza_sales;

/*Average Pizza per order*/
select sum(quantity)/count(distinct order_id) as Average_pizzas_per_order from pizza_sales;

/*Percentage of sales by pizza category*/
select pizza_category ,sum(total_price)*100/(select sum(total_price) from pizza_sales) as Total_sales from pizza_sales
group by pizza_category;

/*Percentage of sales by pizza size*/
select pizza_size ,round(sum(total_price)*100/(select sum(total_price) from pizza_sales),2)as Total_sales from pizza_sales
group by pizza_size order by Total_sales desc;

/*Top 5 pizza sales by revenue*/
select pizza_name,sum(total_price) as Total_revenue from pizza_sales
group by pizza_name order by Total_revenue desc limit 5;

/*Top 5 pizza sales by quantity*/
select pizza_name,sum(quantity) as Total_quantity  from pizza_sales
group by pizza_name order by Total_quantity desc limit 5;

/*Top 5 best sellers by total orders*/
select pizza_name,count(distinct order_id) as Total_orders from pizza_sales
group by pizza_name order by Total_orders desc limit 5;

/*Bottom 5 pizza sales by reveneu*/
select pizza_name,sum(total_price) as Total_revenue from pizza_sales
group by pizza_name order by Total_revenue asc limit 5;

/*Bottom 5 pizza sales by quantity*/
select pizza_name,sum(quantity) as Total_quantity from pizza_sales
group by pizza_name order by Total_quantity asc limit 5;

/*Bottom 5 pizza sales by orders*/
select pizza_name,count(distinct order_id) as Total_orders from pizza_sales
group by pizza_name order by Total_orders asc limit 5;

