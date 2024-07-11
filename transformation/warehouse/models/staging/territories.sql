{{
    config(
        materialized="table",
        unique_key=["territory_id"]
    )
}}

select
territory_id,
territory_description,
region_id
from {{ source('northwind', 'territories') }}