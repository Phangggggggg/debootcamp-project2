{{
    config(
        materialized="table",
        unique_key=["region_id"]
    )
}}

select
region_id,
region_description
from {{ source('northwind', 'region') }}