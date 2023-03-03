
{{ config(materialized='table') }}
select * from dbt.test.ali