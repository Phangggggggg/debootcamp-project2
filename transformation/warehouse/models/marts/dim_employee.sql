{{
    config(
        materialized="table"
    )
}}


select	
	t1.employee_id 
	, t1.last_name
	, t1.title
	, t1.birth_date
	, t1.hire_date
	, t1.address
	, t1.city
	, t1.region
	, t1.postal_code
	, t1.country
	, t1.home_phone
	, t3.territory_description
from 
{{ref('employees')}} as  t1
left join 
{{ref('employee_territories')}} as  t2 on t1.employee_id = t2.employee_id
left join 
{{ref('territories')}} as t3	on t2.territory_id= t3.territory_id
