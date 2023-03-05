{{ config(materialized='table') }}

select 1 as id, 'cust1' as custname, '2023-03-01' as loaddate
union

select 2 as id, 'cust2' as custname, '2023-03-02' as loaddate
union

select 3 as id, 'cust3' as custname, '2023-03-03' as loaddate
union

select 4 as id, 'cust4' as custname, '2023-03-03' as loaddate