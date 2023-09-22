with all_cfl_mappings as (
    
    select * from {{ ref('corebridge_cfl_mappings') }}
    UNION ALL
    select * from {{ ref('alba_cfl_mappings') }}


),
cfl_column_def as (
    
    select * from {{ ref('cfl_column_def') }}

),
final_all_cfl_mappings as (

    select
    deal_map.deal_name  as deal_name,
    deal_map.source_col_name  as source_col_name,
    csl_def.column_name as cfl_col_name
    from all_cfl_mappings as deal_map
    join cfl_column_def as csl_def on deal_map.cfl_col_code = csl_def.id

)
select * from final_all_cfl_mappings

