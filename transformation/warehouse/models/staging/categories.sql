{{
    config(
        materialized="table"
    )
}}

select
    category_id,
    category_name,
    description,
    picture
from {{ source('northwind', 'categories') }}
