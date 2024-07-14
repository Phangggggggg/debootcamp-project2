python -m integration.pipelines.northwind_integration_pipeline && cd transformation/warehouse && dbt deps && dbt build --target dev
