{{
    config(
        materialized="table",
        unique_key=["product_id"]
    )
}}

select
product_id,
product_name,
supplier_id,
category_id,
quantity_per_unit,
unit_price,
units_in_stock,
units_on_order,
reorder_level,
discontinued
from {{ source('northwind', 'products') }}