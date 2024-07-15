select *
from {{ ref('orders') }}
where freight < 0 or freight > 500