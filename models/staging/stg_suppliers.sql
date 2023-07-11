with source as (

    select * from {{ source('northwind', 'suppliers') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source