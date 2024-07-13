	select 
	t1.order_id
	, t1.customer_id 
	, t1.employee_id
	, t2.product_id
	, t1.order_date
	from 
	{{ref{'orders')}} t1
	left join 
	{{ref('order_details')}} t2 on t1.order_id = t2.order_id 
	left join 
	{{ref('products')}} t3 on t2.product_id = t3.product_id
