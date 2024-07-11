{{
    config(
        materialized="table",
        unique_key=["customer_id"]
    )
}}

select
    customer_id,
    company_name,
    contact_name,
    address,
    city,
    region,
    postal_code,
    country,
    phone,
    fax
from {{ source('northwind', 'customers') }}

