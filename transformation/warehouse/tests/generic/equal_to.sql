{% test equal_to(model, column_name, value) %}
    select *
    from {{ model }}
    where {{ column_name }} <> {{ value }}
{% endtest %}
