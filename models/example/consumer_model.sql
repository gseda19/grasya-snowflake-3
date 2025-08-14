{{ config(materialized='table') }}
select id
from {{ ref('base_model') }}
