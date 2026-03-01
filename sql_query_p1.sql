use customer_behaviours;

-- Q1what is total revenus genarated by male vs female customer?  

select gender ,sum(purchase_amount) as purchase_data from customer_data_table
group by gender;


-- Q2which customer is use discount but still spent more than the average purchase amount?
select customer_id,purchase_amount from customer_data_table
where discount_applied ='yes' and purchase_amount >=(select avg(purchase_amount) from customer_data_table);

-- Q3which are the top 5 products  with the highest average review rating ?
select item_purchased,avg(review_rating) as Average  from customer_data_table
group by item_purchased
order by avg(review_rating) desc
limit 5 ;

-- Q4 compare the average purchase amount between standard and express shipping 
 select shipping_type,round(avg(purchase_amount),2) from customer_data_table
 where shipping_type in ('standard','express')
 group by shipping_type;
 
-- Q5 Do subcribe customer spend more ? compare average spend and total revenue 
--  between subcribers and non subcribes

select subscription_status ,count(customer_id) as total_customer ,
round(avg(purchase_amount),2) as spend,
round(sum(purchase_amount),2) as total from customer_data_table
group by subscription_status
order by total ,spend desc;

-- Q6 which 5 product  have the highest percentage  of purchase  with discount  applied?
SELECT item_purchased,
ROUND(
    SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) 
    / COUNT(*) * 100, 2
) AS discount_rate
FROM customer_data_table
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;

-- Q7 segment customer into new ,returning  ,and  loyal based on their total 
-- number of previous purchase ,and  show the count  of each segment 
with customer_type as (
select customer_id,previous_purchases,
case 
	when previous_purchases =1 then 'new'
    when previous_purchases  between 2 AND 10 then 'Returning'
    else 'loyal'
    end as customer_segment
from customer_data_table
)
select customer_segment ,count(*) as number_of_customer
from customer_type
group by customer_segment;

-- Q8what are top 3 most purchase product  within each category?
with item_count as (
select category,
item_purchased,
count(customer_id) as total_orders,
row_number() over(partition by category order by count(customer_id) desc) as item_rank
from customer_data_table
group by category ,item_purchased
)

select item_rank,category ,item_purchased ,total_orders
from item_count
where item_rank <=3;

-- Q9 Are customer  who are repeat buyers (more than 5 previous purchase ) also likely to subcribes ?
select subscription_status,count(customer_id) as repeat_buyers
from customer_data_table 
where previous_purchases >5
group by subscription_status;

-- Q10 what is the revenue contribution of each age group ?  

select age_group,
sum(purchase_amount) as total_revenue from  customer_data_table
group by age_group 
order by  total_revenue desc;


SELECT * FROM customer_behaviours.customer_data_table;
