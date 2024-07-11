{{
    config(
        materialized="table",
        unique_key=["state_id"]
    )
}}

select
state_id,
state_name,
state_abbr,
state_region
from {{ source('northwind', 'us_states') }}