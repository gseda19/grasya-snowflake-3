{{
  config(
    materialized='dynamic_table',
    target_lag='1 hour',
    snowflake_warehouse='MY_WH'
  )
}}

SELECT
  id
FROM {{ ref('my_second_dbt_model') }}
