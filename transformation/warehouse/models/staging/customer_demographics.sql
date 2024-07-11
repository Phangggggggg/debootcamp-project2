{{
    config(
        materialized="table",
        unique_key=["customer_type_id"]
    )
}}

select
    customer_type_id,
    customer_desc
from {{ source('northwind', 'customer_demographics') }}