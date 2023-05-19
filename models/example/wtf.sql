
-- Use the `ref` function to select from other models
{{ config(materialized='table') }}

select *
from {{ ref('cities') }}
where id > 1
