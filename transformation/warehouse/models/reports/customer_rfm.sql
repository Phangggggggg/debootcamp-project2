select 
customer_id as customer_id
, sum(unit_price*quantity) as total_spend
, count(distinct t1.order_id) as order_cnt
, cast(sum(unit_price*quantity) / count(distinct t1.order_id)*100 as int) as avg_order_value 
, max(order_date) as latest_purchase_at
from 
orders t1
left join 
order_details t2 on t1.order_id = t2.order_id 
where 
	t1.order_date >= '1998-01-01'
group by 1
order by 1
