

{{ config(materialized='table') }}

select 1 as id
/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
