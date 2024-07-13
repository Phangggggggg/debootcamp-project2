select 
customer_id
, sum(unit_price*quantity) as total_spend
, count(distinct t1.order_id) as order_cnt
, sum(unit_price*quantity) / count(distinct t1.order_id) as avg_order_value 
, max(order_date) as latest_purchase_at
from 
{{ref('orders')}} t1
left join 
{{ref('order_details')}} t2 on t1.order_id = t2.order_id 
group by 1
order by 1
