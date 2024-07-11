{{
    config(
        materialized="table",
        unique_key=["customer_id","customer_type_id"]
    )
}}

select
    customer_id,
    customer_type_id
from {{ source('northwind', 'customer_customer_demo') }}
