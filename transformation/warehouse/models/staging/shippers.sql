{{
    config(
        materialized="table",
        unique_key=["shipper_id"]
    )
}}

select
shipper_id,
company_name,
phone
from {{ source('northwind', 'shippers') }}