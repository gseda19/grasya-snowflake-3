{{ config(
    materialized='dynamic_table',
    target_lag='1 hour',
    snowflake_warehouse='MY_WH',
    refresh_mode='incremental',
    initialize='on_create'
) }}
select id, first_name
from {{ ref('baz') }}