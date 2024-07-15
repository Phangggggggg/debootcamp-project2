
select *
from {{ ref('categories') }}
where caategory_name not in (
    'Beverages',
    'Condiments',
    'Confections',
    'Dairy Products',
    'Grains/Cereals',
    'Meat/Poultry',
    'Produce',
    'Seafood'
)
