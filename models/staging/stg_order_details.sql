with source as (

    select * from {{ source('northwind', 'order_details') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source