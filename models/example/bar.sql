{{ config(
    materialized = "dynamic_table",
    snowflake_warehouse = "MY_WH",
    target_lag = "10 minutes"
) }}

select
    *
from {{ ref('my_first_dbt_model') }}