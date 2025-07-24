{{ config(
    materialized = "dynamic_table",
    snowflake_warehouse = "MY_WH",
    target_lag = "15 minutes",
    tags=['dynamic_table']
) }}

select
    *
from {{ ref('my_first_dbt_model') }}