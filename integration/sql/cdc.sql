SHOW WAL_LEVEL;

SELECT PG_CREATE_LOGICAL_REPLICATION_SLOT('airbyte_slot', 'pgoutput');

ALTER TABLE public.categories REPLICA IDENTITY DEFAULT;
ALTER TABLE public.customer_customer_demo REPLICA IDENTITY DEFAULT;
ALTER TABLE public.customer_demographics REPLICA IDENTITY DEFAULT;
ALTER TABLE public.customers REPLICA IDENTITY DEFAULT;
ALTER TABLE public.employee_territories REPLICA IDENTITY DEFAULT;
ALTER TABLE public.employees REPLICA IDENTITY DEFAULT;
ALTER TABLE public.order_details REPLICA IDENTITY DEFAULT;
ALTER TABLE public.orders REPLICA IDENTITY DEFAULT;
ALTER TABLE public.products REPLICA IDENTITY DEFAULT;
ALTER TABLE public.region REPLICA IDENTITY DEFAULT;
ALTER TABLE public.shippers REPLICA IDENTITY DEFAULT;
ALTER TABLE public.suppliers REPLICA IDENTITY DEFAULT;
ALTER TABLE public.territories REPLICA IDENTITY DEFAULT;
ALTER TABLE public.us_states REPLICA IDENTITY DEFAULT;

CREATE PUBLICATION airbyte_publication FOR TABLE categories, customer_customer_demo, customer_demographics, customers, employee_territories, employees, order_details, orders, products, region, shippers, suppliers, territories, us_states;




SELECT * FROM PG_PUBLICATION_TABLES;
