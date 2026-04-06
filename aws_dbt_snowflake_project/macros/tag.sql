{% macro tag(col) %}
CASE
    WHEN {{ col }} < 100 THEN 'Low'
    WHEN {{ col }} >= 100 AND {{ col }} < 150 THEN 'Medium'
    ELSE 'High'
END
{% endmacro %}