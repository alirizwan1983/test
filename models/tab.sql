
{{ config(materialized='table') }}
select id, loaddate from dbt.test.ali
union 
select 10 as id, '2023-03-03T11:46:48.723000-08:00'