{{ config(
    materialized='table'
) }}
select 1 as id, 'John' as first_name, 'Smith' as last_name, 'US' as homeaddress