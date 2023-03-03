{{
    config(
        materialized='incremental'
    )
}}

select
    *

from {{ ref('t1') }}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where loaddate > (select max(loaddate) from {{ this }})

{% endif %}