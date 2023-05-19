
-- Use the `ref` function to select from other models
{{ config(materialized='table') }}

select *
from {{ ref('test') }}
where id > 1
