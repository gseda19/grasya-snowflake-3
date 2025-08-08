{{
  config(
    materialized='dynamic_table',
    target_lag='1 hour',
    snowflake_warehouse='MY_WH',
    pre_hook=["SELECT '{{ this.database }}' as current_db"],
    post_hook=["SELECT '{{ this.database }}' as current_db_post"]
  )
}}

SELECT id, name FROM {{ ref('my_second_dbt_model') }}
