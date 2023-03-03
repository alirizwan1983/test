{{ config(materialized='table') }}

select 1 as id, getdate() as loaddate
union

select 2 as id, getdate() as loaddate
union

select 3 as id, getdate() as loaddate

union

select 4 as id, getdate() as loaddate
