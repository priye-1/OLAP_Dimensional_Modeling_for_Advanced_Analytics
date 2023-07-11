with source as (

    select * from {{ source('northwind', 'invoices') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source