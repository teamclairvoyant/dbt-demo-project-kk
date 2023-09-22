{% macro get_cfl_select_statement(deal, source_table_name) %}

{% set results  = dbt_utils.get_query_results_as_dict(query='select * from conformance.deal_to_cfl_mappings') %}


{{ log("get_query_results_as_dict results: " ~ results) }}   

{{ log("Running some_macro: " ~ deal ~ ", " ~ source_table_name) }}   

select transaction_id,
       account_num as account_number,
       company_code,
       transaction_date,
       transaction_type,
       amount


{% endmacro %}