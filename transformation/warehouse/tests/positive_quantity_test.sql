-- tests/positive_quantity_test.sql
select *
from {{ ref('order_details') }}
where quantity <= 0
