
{{
    config(
        materialized="table"
    )
}}

select
row_number() over(order by ship_address)as ship_id 
,shipped_date
, ship_via
, freight
, ship_name
, ship_address
, ship_city
, ship_region
, ship_postal_code
, ship_country
from 
	(select 
	shipped_date
	, ship_via
	, freight
	, ship_name
	, ship_address
	, ship_city
	, ship_region
	, ship_postal_code
	, ship_country
	from 
	{{ref('orders')}} 
	group by 1,2,3,4,5,6,7,8,9
	)
	
