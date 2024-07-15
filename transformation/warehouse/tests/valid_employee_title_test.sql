-- tests/valid_employee_email_format_test.sql
select *
from {{ ref('employees') }}
where title not in (
    'Sales Representative',
    'Vice President, Sales',
    'Sales Manager',
    'Inside Sales Coordinator'
)
