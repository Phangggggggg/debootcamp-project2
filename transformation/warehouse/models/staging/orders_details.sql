{{
    config(
        materialized="table",
        unique_key=["order_id","product_id"]
    )
}}

select
order_id,
product_id,
unit_price,
quantity,
discount
from {{ source('northwind', 'order_details') }}

