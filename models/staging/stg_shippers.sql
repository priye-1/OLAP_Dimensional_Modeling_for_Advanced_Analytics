with source as (

    select * from {{ source('northwind', 'shippers') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source