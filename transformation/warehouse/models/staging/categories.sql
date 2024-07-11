{{
    config(
        materialized="table",
        unique_key=["category_id"]
    )
}}

select
    category_id,
    category_name,
    description,
    picture
from {{ source('northwind', 'categories') }}

