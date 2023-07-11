with source as (

    select * from {{ source('northwind', 'customer') }}
)

select 
    *,
    current_timestamp() as ingestion_timestamp
from source