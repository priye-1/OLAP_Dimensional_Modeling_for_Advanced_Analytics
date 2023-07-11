with source as (

    select * from {{ source('northwind', 'privileges') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source