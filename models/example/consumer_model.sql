{{ config(materialized='table') }}
select *
from {{ ref('base_model') }}
