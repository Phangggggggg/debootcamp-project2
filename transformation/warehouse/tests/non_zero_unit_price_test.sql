-- tests/non_zero_unit_price_test.sql
select *
from {{ ref('products') }}
where unit_price <= 0
