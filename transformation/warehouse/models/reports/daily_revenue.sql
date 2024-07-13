select 
order_date
, sum(unit_price * quantity /(1-discount)) as original_revenue
, sum(unit_price * quantity) as revenue_after_discount
, sum(case when ship_country = 'USA' then unit_price * quantity end) as revenue_after_discount_usa
, sum(case when ship_country = 'Germany' then unit_price * quantity end) as revenue_after_discount_germany
, sum(case when ship_country = 'Austria' then unit_price * quantity end) as revenue_after_discount_austria
, sum(case when ship_country = 'Brazil' then unit_price * quantity end) as revenue_after_discount_brazil
, sum(case when ship_country not in ( 'USA', 'Germany', 'Austria', 'Brazil' ) then unit_price * quantity end) as revenue_after_discount_other
from 
{{ref('orders')}} t1
left join 
{{ref('orders_details')}} t2 on t1.order_id = t2.order_id 
group by 1
