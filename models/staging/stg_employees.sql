with source as (

    select * from {{ source('northwind', 'employees') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source