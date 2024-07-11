{{
    config(
        materialized="table",
        unique_key=["employee_id"]
    )
}}

select
employee_id,
title_of_courtesy,
first_name
last_name,
title,
birth_date,
hire_date,
address,
city,
region,
postal_code,
country,
home_phone,
extension,
photo,
notes,
reports_to,
photo_path
from {{ source('northwind', 'employees') }}

