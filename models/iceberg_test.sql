{{ config(materialized='table', table_type='iceberg') }}

select 1 as id,
'test' as varchar_col,
'new_data' as new_varchar_col,
'new_data2' as new_varchar_col2