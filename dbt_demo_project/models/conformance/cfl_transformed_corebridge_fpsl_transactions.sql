with corebridge_fpsl_transactions as (
    select * from {{ ref('corebridge_fpsl_transactions') }}
)


{{ get_cfl_select_statement('corebridge','corebridge_fpsl_transactions') }} 
FROM corebridge_fpsl_transactions
