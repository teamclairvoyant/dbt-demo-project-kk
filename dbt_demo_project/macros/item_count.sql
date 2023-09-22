{% macro item_count(item) %}

    SUM(CASE WHEN ITEM = '{{item}}' THEN 1 ELSE 0 END)

{% endmacro %}