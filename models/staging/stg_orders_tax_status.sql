with source as (

    select * from {{ source('northwind', 'orders_tax_status') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source