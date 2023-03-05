{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}

select
    *

from {{ ref('test1') }}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where loaddate > (select max(loaddate) from {{ this }})

{% endif %}