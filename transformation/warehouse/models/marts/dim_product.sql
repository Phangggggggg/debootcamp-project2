{{
    config(
        materialized="table"
    )
}}


select
*
from 
{{ref('products')}}
