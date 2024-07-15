{% test column_greater_or_equal(model, column_name, value) %}
    select *
    from {{ model }}
    where {{ column_name }} < {{ value }}
{% endtest %}
