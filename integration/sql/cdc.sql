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

ALTER PUBLICATION airbyte_publication ADD TABLE categories;
ALTER PUBLICATION airbyte_publication ADD TABLE customer_customer_demo;
ALTER PUBLICATION airbyte_publication ADD TABLE customer_demograhics;
ALTER PUBLICATION airbyte_publication ADD TABLE customers;
ALTER PUBLICATION airbyte_publication ADD TABLE employee_territories;
ALTER PUBLICATION airbyte_publication ADD TABLE employees;
ALTER PUBLICATION airbyte_publication ADD TABLE order_details;
ALTER PUBLICATION airbyte_publication ADD TABLE orders;
ALTER PUBLICATION airbyte_publication ADD TABLE products;
ALTER PUBLICATION airbyte_publication ADD TABLE region;
ALTER PUBLICATION airbyte_publication ADD TABLE shippers;
ALTER PUBLICATION airbyte_publication ADD TABLE suppliers;
ALTER PUBLICATION airbyte_publication ADD TABLE territories;
ALTER PUBLICATION airbyte_publication ADD TABLE us_state;


SELECT * FROM PG_PUBLICATION_TABLES;
