{{
    config(
        materialized="table",
        unique_key=["order_id"]
    )
}}

select
order_id,
customer_id,
employee_id,
order_date,
required_date,
shipped_date,
ship_via,
freight,
ship_name,
ship_address,
ship_city,
ship_region,
ship_postal_code,
ship_country
from {{ source('northwind', 'orders') }}