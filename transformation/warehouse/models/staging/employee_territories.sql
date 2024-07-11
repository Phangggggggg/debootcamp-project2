{{
    config(
        materialized="table",
        unique_key=["employee_id","territory_id"]
    )
}}

select
employee_id,
territory_id
from {{ source('northwind', 'employee_territories') }}

