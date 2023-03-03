{{ config(materialized='table') }}

select 1 as id, '2023-03-01' as loaddate
union

select 2 as id, '2023-03-02' as loaddate
union

select 3 as id, '2023-03-03' as loaddate