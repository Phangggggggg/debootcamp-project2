
{{
    config(
        materialized="table"
    )
}}

select 
*
from 
 (select 
	shipped_date
	, ship_name
	, ship_address
	, ship_city
	, ship_region
	, ship_postal_code
	, ship_country
    , dense_rank() over (order by concat(ship_name, ship_address, freight)) as ship_id
	from 
	{{ref('orders')}} 
    )
	group by 1,2,3,4,5,6,7,8
