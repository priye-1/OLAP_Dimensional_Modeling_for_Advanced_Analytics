with source as (

    select * from {{ source('northwind', 'strings') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source