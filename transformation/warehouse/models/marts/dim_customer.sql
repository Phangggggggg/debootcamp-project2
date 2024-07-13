{{
    config(
        materialized="table"
    )
}}


select 
* 
from 
{{ref('customers')}}
