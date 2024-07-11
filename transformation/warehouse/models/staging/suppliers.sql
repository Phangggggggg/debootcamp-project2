{{
    config(
        materialized="table",
        unique_key=["supplier_id"]
    )
}}

select
supplier_id,
company_name,
contact_name,
contact_title,
address,
city,
region,
postal_code,
country,
phone,
fax,
homepage
from {{ source('northwind', 'suppliers') }}