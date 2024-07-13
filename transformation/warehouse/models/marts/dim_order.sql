{{
    config(
        materialized="table"
    )
}}


select
*
from 
{{ref('orders_details')}}
