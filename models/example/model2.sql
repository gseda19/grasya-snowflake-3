{{ config(
    materialized = "dynamic_table",
    snowflake_warehouse = "MY_WH",
    target_lag = "15 minutes"
) }}

select
    *
from {{ ref('my_first_dbt_model') }}