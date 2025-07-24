{{ config(
    alias='test_asset',
    materialized="dynamic_table",
    target_lag="15 minutes",
    snowflake_warehouse="MY_WH",
    on_configuration_change="fail",
    tags=["dynamic_table"]
) }}

select
    *
from {{ ref('my_first_dbt_model') }}  -- This should exist in your project
limit 10
