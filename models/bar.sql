{{ config(
    materialized='table'
) }}
select 1 as id, 'John' as first_name